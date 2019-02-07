#!/bin/env ruby
# frozen_string_literal: true

require 'wikidata/fetcher'

enwiki = EveryPolitician::Wikidata.wikipedia_xpath(
  url:    'https://en.wikipedia.org/wiki/2013_Caymanian_general_election',
  after:  '//span[@id="By_district"]',
  before:  '//span[@id="Aftermath"]',
  xpath:  '//table//td[3]//a[not(@class="new")]/@title',
  as_ids: true,
)

EveryPolitician::Wikidata.scrape_wikidata(ids: enwiki)
