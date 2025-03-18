---
title: Radio Experiments with EcoGather
description: Exploring alternative communications systems, including ham radio.
image: /img/radio/lindsey_mesh.jpeg
date: Last Modified 
tags:
  - museum
layout: layouts/post.njk
---

# Winter 2025 Seminar Topics

We're planning a series of short, informal presentations and discussions around topics of interest to the group. In order to guide our exploration, there here are some basic characteristics of radio systems that can impact how a radio is used and what it might be useful for:

- **Send / Recieve?** Can you both send and receive information?  For example, it can often be useful in an emergency to use a cheap, receive-only radio to monitor for news or announcements; while in other cases, two-way communication can be useful. 
- **Range?** Over what range can the communication be achieved?  Some radios have a range of a few miles;  others can bounce signals off the atmosphere and travel around the globe.
- **License Required?** Can this type of radio be used without a license?  If a license is required, can it simply be purchased for a small fee, or does the user need to pass an official exam?

Below are some examples of radios that fit in certain combinations of these categories:

## Receive-only // Long-range // No license required

In general, it is often useful in a grid-down scenario to be able to listen into ambient broadcasts (news, fire, police, emergency services).  There are various inexpensive approaches to this, including:
- **Scanners** -- small radios that can receive local police, fire, and other broadcasts
- **Software-defined radios** -- inexpensive dongles that, when connected to a laptop, can provide an intuitive graphical way of exploring received radio signals
- **Short-wave radios** -- radios optimized for receiving broadcasts from around the globe

## Send & Receive // Short-range // Easy license required

These are relatively inexpensive radio technologies that allow for off-grid communication within a range of a few miles (or tens of miles, with repeater nodes).   This would be useful for folks on a homestead, or perhpas within a relatively small town, to stay in touch.

- **Meshtastic** (enables phone to do off-grid, mesh-networked texting via an inexpensive add-on module; unlicensed)
- **GMRS** (audio communication; a $35, no-exam license is required)
- **Walkie Talkies** (audio communication; no license required)

## Send & Receive // 100s of miles // Exam-based license required

For off-grid coordination of logistics (food, water, transport) -- e.g. after or during a storm, flood, or fire -- it seems often to be useful to communicate within a range of a few hundred miles.  A typical approach to this is to a technique ([NVIS](https://en.wikipedia.org/wiki/Near_vertical_incidence_skywave)) that bounces radio signals off the atmosphere nearly directly above the broadcasting site, so that signals land within the desired range.  The relevant bands (typically, HF), require a ham license (typically, the higher-level, 'General' license).   Example technologies include:

- **js8call; varac** -- keyboard-to-keyboard live chat, with store-and-forward capability
- **winlink** -- ham radio-based email program

Sun 16 Feb 2025 05:53:50 PM EST

# Meshtastic notes

Link to a < $150 meshtastic repeater node [here](https://www.etsy.com/listing/1048791528/all-in-one-waterproof-solar-powered-off?ga_order=most_relevant&ga_search_type=all&ga_view_type=gallery&ga_search_query=meshtastic+repeater&ref=sr_gallery-1-8&content_source=e68961fa5a3916425776b486a8a0ff245709ec82%253A1048791528&organic_search_click=1&logging_key=f91e8779bceeca494505119a19c287f6d8615e38%3A1048791528)

Standalone meshtastic nodes [here](https://www.etsy.com/market/meshtastic_repeater)

Wireless paper [here](https://heltec.org/project/wireless-paper/)

## Device test

![](/img/radio/trio.jpeg)


- Lilygo T-Beam (v 1.2) $52 [here](https://www.amazon.com/LILYGO-Meshtastic-Development-CH9102F-Soldered/dp/B0B63FV7FR)

- Heltec V3 $25 [here](https://www.amazon.com/HiLetgo-Display-Development-Bluetooth-Unsoldered/dp/B07WHRS2XG)

- Rak Wireless $35 [here](https://www.amazon.com/RAKwireless-WisBlock-Meshtastic-Starter-RAK19007/dp/B0CHKZJK9C)

Explanatory / demo video [here](https://www.youtube.com/watch?v=2pHxxf_e4e0)

Rak wisblock starter kit info [here](https://www.reddit.com/r/meshtastic/comments/1am0s30/noob_question_what_kind_of_battery_should_i_get/)

What is the best device for meshtastic? [here](https://adrelien.com/blog/what-is-the-best-device-for-meshtastic/)

Mon 17 Feb 2025 06:45:12 PM EST


## Setting up Rak wisblock starter kit

[https://forum.rakwireless.com/t/physical-placement-of-oled-screen-on-wisblock-19007/11161](https://forum.rakwireless.com/t/physical-placement-of-oled-screen-on-wisblock-19007/11161)

RAK Wisblock mini datasheet [here](https://docs.rakwireless.com/product-categories/wisblock/rak19003/datasheet/)

RAK 4631 datasheet [here](https://docs.rakwireless.com/product-categories/wisblock/rak4631/sidewalk/)

## meshtastic on itsy bitsy nrf

[https://gitlab.com/edgecollective/meshtastic-firmware-itsybitsy-nrf52-oled](https://gitlab.com/edgecollective/meshtastic-firmware-itsybitsy-nrf52-oled)

still possible to diy a device -- bluetooth module for $13, radio module for $15, screen for $3, pcb + spare parts for $5 -- approx $36 in parts

# phone repo

This is where the phone code lives [https://gitlab.com/edgecollective/neighborhood-mesh](https://gitlab.com/edgecollective/neighborhood-mesh)

Wed 19 Feb 2025 08:14:21 PM EST

Testing power req's ....

Page for audio + text module is [here](https://www.dfrobot.com/product-2801.html)

And wiki [here](https://wiki.dfrobot.com/SKU_TEL0162_SIM7600G_H_CAT4_4G_Communication_Module)

# meshtastic depth sensor

Arduino tutorial for maxbotix sensor [here](https://www.makerguides.com/maxbotix-mb7389-arduino-tutorial/)

Maxbotix 7388 [landing page](https://maxbotix.com/products/mb7388) and [data sheet](/img/11500.pdf)






