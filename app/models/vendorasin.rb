# == Schema Information
#
# Table name: vendorasins
#
#  id                 :integer          not null, primary key
#  asin               :string(255)
#  brand_id           :integer
#  name               :string(255)
#  salesrank          :integer
#  packagequantity    :integer
#  buyboxprice        :decimal(10, )    default(0)
#  referenceoffer     :decimal(10, )
#  referenceoffertype :string(255)
#  fbafee             :decimal(10, )    default(0)
#  storagefee         :decimal(10, )    default(0)
#  variableclosingfee :decimal(10, )    default(0)
#  commissionpct      :decimal(10, )    default(0)
#  commissiionfee     :decimal(10, )    default(0)
#  inboundshipping    :decimal(10, )
#  salespermonth      :decimal(10, )    default(0)
#  totaloffers        :integer          default(0)
#  fbaoffers          :integer          default(0)
#  fbmoffers          :integer          default(0)
#  lowestfbaoffer     :decimal(10, )    default(0)
#  lowestfbmoffer     :decimal(10, )    default(0)
#  isbuyboxfba        :boolean          default(FALSE)
#  product_type_id    :integer
#  ranked_category_id :integer
#  weight             :decimal(10, )
#  length             :decimal(10, )
#  width              :decimal(10, )
#  height             :decimal(10, )
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  product_groups_id  :integer
#  packagewidth       :decimal(10, )
#  packageheight      :decimal(10, )
#  packagelength      :decimal(10, )
#  packageweight      :decimal(10, )
#  notes              :string(255)
#  review             :decimal(10, )    default(0)
#  numreview          :integer          default(0)
#  amazonoffer        :boolean          default(FALSE)
#  totalfbafee        :decimal(10, )    default(0)
#  mpn                :string(255)      default("")
#  ean                :string(255)      default("")
#  upc                :string(255)      default("")
#  invalidid          :boolean          default(FALSE)
#
# Indexes
#
#  index_vendorasins_on_asin                (asin) UNIQUE
#  index_vendorasins_on_brand_id            (brand_id)
#  index_vendorasins_on_product_groups_id   (product_groups_id)
#  index_vendorasins_on_product_type_id     (product_type_id)
#  index_vendorasins_on_ranked_category_id  (ranked_category_id)
#

class Vendorasin < ApplicationRecord
  belongs_to :product_group
  belongs_to :brand
  belongs_to :raked_category
  belongs_to :product_type
  has_many :vendoritem
end
