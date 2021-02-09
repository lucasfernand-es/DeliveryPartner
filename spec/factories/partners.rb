# frozen_string_literal: true

FactoryBot.define do
  factory :partner do
    id { Faker::Internet.uuid }
    trading_name { Faker::Movies::HarryPotter.location }
    owner_name { Faker::Movies::HarryPotter.character }
    document { CNPJ.generate }
    coverage_area do
      GeoJsonHelper.decode(json:
      {
        type: 'MultiPolygon',
        coordinates: [
          [
            [
              [
                -44.04912,
                -19.87743
              ],
              [
                -44.0493,
                -19.89438
              ],
              [
                -44.04758,
                -19.90212
              ],
              [
                -44.04346,
                -19.90922
              ],
              [
                -44.03385,
                -19.91923
              ],
              [
                -44.01891,
                -19.92165
              ],
              [
                -44.01647,
                -19.92306
              ],
              [
                -44.01436,
                -19.92319
              ],
              [
                -44.01175,
                -19.92427
              ],
              [
                -44.00724,
                -19.92585
              ],
              [
                -43.99909,
                -19.9185
              ],
              [
                -43.99432,
                -19.91403
              ],
              [
                -43.99557,
                -19.90842
              ],
              [
                -43.99582,
                -19.90285
              ],
              [
                -43.99436,
                -19.89002
              ],
              [
                -43.99316,
                -19.8792
              ],
              [
                -43.99436,
                -19.87371
              ],
              [
                -43.99951,
                -19.86532
              ],
              [
                -44.01917,
                -19.85135
              ],
              [
                -44.02801,
                -19.8545
              ],
              [
                -44.03745,
                -19.85668
              ],
              [
                -44.04397,
                -19.8608
              ],
              [
                -44.04912,
                -19.87743
              ]
            ]
          ]
        ]
      }.to_json)
    end

    address do
      GeoJsonHelper.decode(json:
        {
          type: 'Point',
          coordinates: [
            -44.012478,
            -19.887215
          ]
        }.to_json)
    end
  end
end
