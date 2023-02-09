___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "URL Parts",
  "categories": ["TAG_MANAGEMENT"],
  "description": "Return specific component of URL.",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "inputUrl",
    "displayName": "Input URL",
    "simpleValueType": true,
    "help": "Please provide the URL you want to parse.",
    "alwaysInSummary": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  },
  {
    "type": "SELECT",
    "name": "output",
    "displayName": "Part of URL to return",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "href",
        "displayValue": "Href"
      },
      {
        "value": "origin",
        "displayValue": "Origin"
      },
      {
        "value": "protocol",
        "displayValue": "Protocol"
      },
      {
        "value": "host",
        "displayValue": "Host"
      },
      {
        "value": "hostname",
        "displayValue": "Hostname"
      },
      {
        "value": "port",
        "displayValue": "Port"
      },
      {
        "value": "pathname",
        "displayValue": "Pathname"
      },
      {
        "value": "search",
        "displayValue": "Search"
      },
      {
        "value": "searchParams",
        "displayValue": "Search Params"
      },
      {
        "value": "hash",
        "displayValue": "Hash"
      }
    ],
    "simpleValueType": true,
    "help": "Please select which component of the URL you want to return."
  }
]


___SANDBOXED_JS_FOR_SERVER___

const parseUrl = require('parseUrl');
const url = data.inputUrl;
const urlObj = parseUrl(url);
const output = data.output;

return urlObj[output] || 'n/a';


___TESTS___

scenarios: []


___NOTES___

Created on 9.2.2023, 14:41:03


