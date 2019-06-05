# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_06_05_092358) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cocktails", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doses", force: :cascade do |t|
    t.string "description"
    t.bigint "cocktail_id"
    t.bigint "ingredient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cocktail_id"], name: "index_doses_on_cocktail_id"
    t.index ["ingredient_id"], name: "index_doses_on_ingredient_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "doses", "cocktails"
  add_foreign_key "doses", "ingredients"
end


# <?xml version="1.0" encoding="utf-8" ?>
# <!-- SQL XML created by WWW SQL Designer, https://github.com/ondras/wwwsqldesigner/ -->
# <!-- Active URL: https://kitt.lewagon.com/db/2209 -->
# <sql>
# <datatypes db="postgresql">
#   <group label="Numeric" color="rgb(238,238,170)">
#     <type label="Integer" length="0" sql="INTEGER" re="INT" quote=""/>
#     <type label="Small Integer" length="0" sql="SMALLINT" quote=""/>
#     <type label="Big Integer" length="0" sql="BIGINT" quote=""/>
#     <type label="Decimal" length="1" sql="DECIMAL" re="numeric" quote=""/>
#     <type label="Serial" length="0" sql="SERIAL" re="SERIAL4" fk="Integer" quote=""/>
#     <type label="Big Serial" length="0" sql="BIGSERIAL" re="SERIAL8" fk="Big Integer" quote=""/>
#     <type label="Real" length="0" sql="BIGINT" quote=""/>
#     <type label="Single precision" length="0" sql="FLOAT" quote=""/>
#     <type label="Double precision" length="0" sql="DOUBLE" re="DOUBLE" quote=""/>
#   </group>

#   <group label="Character" color="rgb(255,200,200)">
#     <type label="Char" length="1" sql="CHAR" quote="'"/>
#     <type label="Varchar" length="1" sql="VARCHAR" re="CHARACTER VARYING" quote="'"/>
#     <type label="Text" length="0" sql="TEXT" quote="'"/>
#     <type label="Binary" length="1" sql="BYTEA" quote="'"/>
#     <type label="Boolean" length="0" sql="BOOLEAN" quote="'"/>
#   </group>

#   <group label="Date &amp; Time" color="rgb(200,255,200)">
#     <type label="Date" length="0" sql="DATE" quote="'"/>
#     <type label="Time" length="1" sql="TIME" quote="'"/>
#     <type label="Time w/ TZ" length="0" sql="TIME WITH TIME ZONE" quote="'"/>
#     <type label="Interval" length="1" sql="INTERVAL" quote="'"/>
#     <type label="Timestamp" length="1" sql="TIMESTAMP" quote="'"/>
#     <type label="Timestamp w/ TZ" length="0" sql="TIMESTAMP WITH TIME ZONE" quote="'"/>
#     <type label="Timestamp wo/ TZ" length="0" sql="TIMESTAMP WITHOUT TIME ZONE" quote="'"/>
#   </group>

#   <group label="Miscellaneous" color="rgb(200,200,255)">
#     <type label="XML" length="1" sql="XML" quote="'"/>
#     <type label="Bit" length="1" sql="BIT" quote="'"/>
#     <type label="Bit Varying" length="1" sql="VARBIT" re="BIT VARYING" quote="'"/>
#     <type label="Inet Host Addr" length="0" sql="INET" quote="'"/>
#     <type label="Inet CIDR Addr" length="0" sql="CIDR" quote="'"/>
#     <type label="Geometry" length="0" sql="GEOMETRY" quote="'"/>
#   </group>
# </datatypes><table x="86" y="45" name="coctails">
# <row name="id" null="1" autoincrement="1">
# <datatype>INTEGER</datatype>
# <default>NULL</default></row>
# <row name="name" null="1" autoincrement="0">
# <datatype>INTEGER</datatype>
# <default>NULL</default></row>
# <key type="PRIMARY" name="">
# <part>id</part>
# </key>
# </table>
# <table x="448" y="50" name="ingredients">
# <row name="id" null="1" autoincrement="1">
# <datatype>INTEGER</datatype>
# <default>NULL</default></row>
# <row name="name" null="1" autoincrement="0">
# <datatype>INTEGER</datatype>
# <default>NULL</default></row>
# <key type="PRIMARY" name="">
# <part>id</part>
# </key>
# </table>
# <table x="261" y="24" name="doses">
# <row name="id" null="1" autoincrement="1">
# <datatype>INTEGER</datatype>
# <default>NULL</default></row>
# <row name="description" null="1" autoincrement="0">
# <datatype>INTEGER</datatype>
# <default>NULL</default></row>
# <row name="coctails_id" null="1" autoincrement="0">
# <datatype>INTEGER</datatype>
# <default>NULL</default><relation table="coctails" row="id" />
# </row>
# <row name="ingredients_id" null="1" autoincrement="0">
# <datatype>INTEGER</datatype>
# <default>NULL</default><relation table="ingredients" row="id" />
# </row>
# <key type="PRIMARY" name="">
# <part>id</part>
# </key>
# </table>
# </sql>
