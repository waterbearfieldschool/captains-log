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

# meshtastic depth sensor

Arduino tutorial for maxbotix sensor [here](https://www.makerguides.com/maxbotix-mb7389-arduino-tutorial/)

Maxbotix 7388 [landing page](https://maxbotix.com/products/mb7388) and [data sheet](/img/11500.pdf)

Example Arduino code for software serial [here](https://forum.arduino.cc/t/maxbotix-7066_serial-comunication_mega2560/682435/2)

Rough code working for parsing:

![](/img/radio/parsing.png)

Good tutorial on additional uarts for Circuitpython [here](https://learn.adafruit.com/circuitpython-essentials/circuitpython-uart-serial)

![](/img/radio/uart_pin_pairs.png)

![](/img/radio/qt_py_m0_pinout.png)

RX: D3
TX: D2

works on qt py 

Using the Meshtastic cli [here](https://meshtastic.org/docs/software/python/cli/usage/)

Meshtastic serial module docs [here](https://meshtastic.org/docs/configuration/module/serial/)

![](/img/radio/heltec_v3_pinout.webp)

A nice guide to setting up serial on Meshtastic [here](https://teelsys.com/meshtastic-serial/)

specs on 7388 maxbotix (datasheet [here](http://localhost:8080/img/11500.pdf))

![](/img/radio/7388_specs.png)

> "The 1.5-meter sensors (MB7375 and MB7395) and 10-meter sensors (MB7363, MB7366, MB7368, MB7383, MB7386, and MB7388) use a scale factor of (Vcc/10240) per 1-mm. The distance is output with a 10-mm resolution. The analog voltage output is typically within ±10-mm of the serial output."

Wed 19 Mar 2025 03:28:43 PM EDT

RAK 19007 pinout [here](https://docs.rakwireless.com/product-categories/wisblock/rak19007/datasheet/)

Looks like we can access RX1 and RX2 on the Wisblock module as per [this forum post](https://forum.rakwireless.com/t/wisblock-starter-kit-19007-rak4630-rx1-and-tx1-pin-number-in-arduino/10668/2)


/*
 * Serial interfaces
 */
// TXD1 RXD1 on Base Board
#define PIN_SERIAL1_RX (15)
#define PIN_SERIAL1_TX (16)

// TXD0 RXD0 on Base Board
#define PIN_SERIAL2_RX (19)
#define PIN_SERIAL2_TX (20)

# meshtastic command line setup 

> (meshty) dwblair@xps13:~/Documents/meshty/venv2/bin$ ./meshtastic --ch-index 0 --sendtext 'test data!'

![](/img/radio/wisblock_pinout.png)

Note:  need to make sure that we've set the baud rate on the input

## setting up the sensor meshtastic node

- baud rate 115200
- rxd 15 and rx 16 on the RAK 4631
- serial.mode TEXTMSG
- default channel to 'depth' or somesuch
- serial.enabled 1

possible uart pin pairs for itsybitsy m4:

![](/img/radio/uart_pin_pairs_itsybitsy_m4.png)

Setting up MQTT guide [here](https://meshtastic.org/docs/configuration/module/mqtt/)

![](/img/radio/depth_data_online.png)

![](/img/radio/water_level_demo.png)


Wed 19 Mar 2025 08:27:15 PM EDT

Updated firmware and script repo, today's snapshot

[https://github.com/edgecollective/mesh-depth/tree/6beac499442d1c69f761b0be1974393b7c57c208](https://github.com/edgecollective/mesh-depth/tree/6beac499442d1c69f761b0be1974393b7c57c208)

- double_uart_itbm4_mesh_send.py -- code that runs on itsy bitsy m4 which reads uart from maxbotix sensor, then sends via another uart to RAK meshtastic node in TEXTMSG mode
- serial_gateway.py -- code for qt py m0 which gets data from a heltec and prints it to the serial port
- serial_read_bayou_post_generic.py -- python script for terminal, reads data from serial port and posts to bayou

Wed 19 Mar 2025 08:58:09 PM EDT


![](/img/radio/montpelier_hubbard.png)

Sat 22 Mar 2025 09:33:06 AM EDT


RAK12500 WisBlock GPS module [https://docs.rakwireless.com/Product-Categories/WisBlock/RAK12500/Datasheet/](https://docs.rakwireless.com/Product-Categories/WisBlock/RAK12500/Datasheet/)

RAK19007 datasheet [here](https://docs.rakwireless.com/Product-Categories/WisBlock/RAK19007/Datasheet/)

Upshot:  if place GPS module on Slot C, use i2c only, no UART conflict

can maybe also place on Slot A, which allows both uart and i2c?  but then potential conflict, as the uart is listening on RX1 and transmitting on TX1

RX1 is the pin we're using to receive UART data and send on the RAK

So: hope for i2c mode for GPS module

Sun 23 Mar 2025 02:53:25 PM EDT


Okay, going to just to the MVP -- not worry about different battery chemistries or microcontrollers, yet.  

I've determined that we can use an itsy bitsy m4 and an itsy bitsy nrf5280 with the same custom uart pins.  Likely a rp2040 as well (I imagine the mux is v flexible on that chip).  That's enough to start.

If not too complicated, will try to add the timer circuit, with option to have controlling micro + sensor sleep, or also entire circuit sleep.

base it on the sweet-p ...

[RAK19007 datasheet](https://shop.marcomweb.it/images/virtuemart/product/RAK19007%20Datasheet.pdf)

![](/img/radio/rak19007_mechanical.png)

Power consumption on RAK19007 + RAK4631 [here](https://forum.rakwireless.com/t/rak4631-rak19007-ads1115-power-consumption/12361/5)

-- from this discussion, looks like we shouldn't currently mess with the rak power input -- just use regular 3.7 rated lipos.  meanwhile we can use a timer on the BAT pin from meshtastic to power the sensor and the micro separately.

should prototype this circuit first, though



discussion on how to power the rak4631 [here](https://forum.rakwireless.com/t/rak4631-without-baseboard/10177/19)


![](/img/radio/water_mesh.png)

Video explaning the timer: [https://photos.app.goo.gl/C4hNUPwVMvn81FZs8](https://photos.app.goo.gl/C4hNUPwVMvn81FZs8)

![](/img/radio/heltec_feather_base.png)

Wed 26 Mar 2025 07:42:07 PM EDT

rak 19007 -- can use USB or solar input to charge battery -- nice!

![](/img/radio/rak_19007_input_options.png)

Sat 05 Apr 2025 09:07:42 AM EDT

Seeed studio has some low-cost nordic and lora chips ...

Lora chip avail (WIO-SX1262) for $5 on digikey [here](https://www.digikey.com/en/products/detail/seeed-technology-co-ltd/114993390/25835823?gclsrc=aw.ds&&utm_adgroup=&utm_source=google&utm_medium=cpc&utm_campaign=PMax%20Shopping_Product_Medium%20ROAS%20Categories&utm_term=&utm_content=&utm_id=go_cmp-20223376311_adg-_ad-__dev-c_ext-_prd-25835823_sig-Cj0KCQjwqcO_BhDaARIsACz62vNfDThNDcsb3GchfTfYWVYZFPQbMCCs0-PB9Blc6l7CuHdvaE6UV38aAs1jEALw_wcB&gad_source=1&gclid=Cj0KCQjwqcO_BhDaARIsACz62vNfDThNDcsb3GchfTfYWVYZFPQbMCCs0-PB9Blc6l7CuHdvaE6UV38aAs1jEALw_wcB&gclsrc=aw.ds)

Here's the description at Seeed of the module: [link](https://www.seeedstudio.com/Wio-SX1262-Wireless-Module-p-5981.html)

Here's a TRACO power DC-DC that outputs 3.3V and 1A with max 36V and min 4.7V input [link](https://www.digikey.com/en/products/detail/traco-power/TSR-1-2433/9383776)

Looks like the nordic has built-in power converters, see forum [here](https://forums.adafruit.com/viewtopic.php?t=149285)

So: what about a board that allows for different battery chemistries, so that the system can be a repeater in cold weather / take different batteries?

Meshtastic nrf diy [here](https://adrelien.com/meshtastic-diy-how-to-build-your-own-meshtastic-node-nrf52840-lora-radio/)

NRF52840 pro micro [here](https://www.amazon.com/AITRIP-Development-Bluetooth-Management-Module%EF%BC%8CNano/dp/B0DCZJKYL1/ref=asc_df_B0DCZJKYL1?mcid=6d520dc732973935be59a08863d25919&tag=hyprod-20&linkCode=df0&hvadid=726893313099&hvpos=&hvnetw=g&hvrand=575833733904072902&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9002061&hvtargid=pla-2391501835569&psc=1)

Ah!  The proper term for it is the 'super mini' -- and Adafruit has Circuitpython for it! [here](https://circuitpython.org/board/supermini_nrf52840/)

super mini pinout [here](https://holykeebs.com/products/supermini-nrf52840)

it's a clone of the nice!nano v2 [here](https://nicekeyboards.com/docs/nice-nano/pinout-schematic/)

meshtastic 'rak killer' [here](https://www.reddit.com/r/meshtastic/comments/1f48w9a/the_rak_killer_meshtastic_diy_how_to_build_your/)

Sun 06 Apr 2025 10:17:05 PM EDT

build your own meshtastic node [here](https://adrelien.com/meshtastic-diy-how-to-build-your-own-meshtastic-node-nrf52840-lora-radio/)

![](/img/radio/nice_bootloader.png)

waveshare module [here](https://www.amazon.com/Waveshare-Core1262-868M-Module-Support-Anti-Interference/dp/B09LV2W64R/ref=asc_df_B09LV2W64R?mcid=237f9ac3c2d8340b8e22a833b9f4bad8&tag=hyprod-20&linkCode=df0&hvadid=693310954762&hvpos=&hvnetw=g&hvrand=1644473740976195916&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9002061&hvtargid=pla-2211744334922&th=1)
![](/img/radio/waveshare_sx1262.png)

NOTE:  

Busy <--> DIO0

NSS <--> CS

Mon 07 Apr 2025 05:47:34 PM EDT

kicad footprint and symbol for nice! nano [here](https://github.com/bstiq/nice-nano-kicad)

schematic for nice! nano board [here](https://nicekeyboards.com/docs/nice-nano/pinout-schematic/)  -- hopefully same as supermini 

more docs for the nice! nano, explaining the pinout [here](https://nicekeyboards.com/docs/nice-nano/)

bluetooth module itself via adafruit is $13 [here](https://www.adafruit.com/product/4078)

or $8 via adafruit [here](https://www.sparkfun.com/nordic-nrf52840-ble-module-mdbt50q-1mv2.html?gad_source=4&gclid=Cj0KCQjw782_BhDjARIsABTv_JD-_A8b365Q-NyWo-z70TH1elR2sc6kaUUQSGBJwbLr_wVn2AKl6ocaAitXEALw_wcB)

cold weather battery options [here](https://www.reddit.com/r/meshtastic/comments/1bdgt04/any_cold_weather_battery_options/)

cold weather node forum [here](https://www.reddit.com/r/meshtastic/comments/1i0a1lg/how_big_a_battery_do_i_need_for_a_meshtastic_node/)

another meshtastic solar thread [here](https://www.reddit.com/r/meshtastic/comments/1gqyovj/solarbattery_controller/)

adafruit usb c plug breakout [here](https://www.adafruit.com/product/5978)

5V 1A output min 7V in max 36V DC DC Traco Power on digikey [here](https://www.digikey.com/en/products/detail/traco-power/TSR-1-2450E/12171283?gclsrc=aw.ds&&utm_adgroup=&utm_source=google&utm_medium=cpc&utm_campaign=PMax%20Shopping_Product_Low%20ROAS%20Categories&utm_term=&utm_content=&utm_id=go_cmp-20243063506_adg-_ad-__dev-c_ext-_prd-12171283_sig-Cj0KCQjw782_BhDjARIsABTv_JCGDi6U76zVR1xbmbXUHnCMqujL7Y9YssBkjvhjdyd8rvPfI3f8JgYaAqWFEALw_wcB&gad_source=1&gclid=Cj0KCQjw782_BhDjARIsABTv_JCGDi6U76zVR1xbmbXUHnCMqujL7Y9YssBkjvhjdyd8rvPfI3f8JgYaAqWFEALw_wcB&gclsrc=aw.ds)

molex 10544 connector on digikey [here](https://www.digikey.com/en/products/detail/molex/1054440001/5843889)

Mon 07 Apr 2025 08:17:59 PM EDT

I installed platformio as per [this guide](https://docs.platformio.org/en/latest/core/installation/methods/installer-script.html)

The platformio quickstart is [here](https://docs.platformio.org/en/latest/core/quickstart.html)

Meshtastic guide to building the firmware is [here](https://meshtastic.org/docs/development/firmware/build/)

how to connect the itsybitsy to the waveshare lora module:

![](/img/radio/ib_waveshare.png)

Note that my schematic for connecting to the itsy bitsy came from lucciola_w

Note that the firmware for the supermini seems to be in the meshtastic variant:  firmware/variants/diy/nrf52_promicro_diy_tcxo

working repos on github.com/edgecollective

meshtastic-custom-firmware

super-mini-mesh

Mon 07 Apr 2025 11:01:45 PM EDT

![](/img/radio/sensor_bridge.jpg)

![](/img/radio/mesh_sensor_battery_behavior.png)

Wed 09 Apr 2025 09:21:29 PM EDT

![](/img/radio/power_profile_supermini.png)

Thu 10 Apr 2025 07:47:54 PM EDT

JST connector orientation [here](https://www.amazon.com/EEMB-2000mAh-Battery-Rechargeable-Connector/dp/B08214DJLJ/ref=asc_df_B08214DJLJ?mcid=2499bb537f6030c1a060cd1662809b74&tag=hyprod-20&linkCode=df0&hvadid=693308325748&hvpos=&hvnetw=g&hvrand=15956326518424862066&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9002061&hvtargid=pla-952213741191&th=1)


Mon 14 Apr 2025 06:22:54 PM EDT


![](/img/radio/turkey_tufts.png)

![](/img/radio/turkey_waterbear.png)

![](/img/radio/lonetree_tufts.png)

![](/img/radio/lonetree_detail.png)

![](/img/radio/oaks_parking_lot.png)

radio setttings for various modes in meshtastic [here](https://meshtastic.org/docs/overview/radio-settings/)

![](/img/radio/longfast_deets.png)

adafruit rfm9x library details [here](https://docs.circuitpython.org/projects/rfm9x/en/2.2.0/api.html)

library located on github [here](https://github.com/adafruit/Adafruit_CircuitPython_RFM9x)

nice! nano pinout [here](https://nicekeyboards.com/docs/nice-nano/pinout-schematic/)

![](/img/radio/nicenano_pinmap.png)


<img src="/img/radio/supermini_lora.png" height="300" width="100">

sx126x driver for python [here](https://github.com/ehong-tl/micropySX126X)

have it working!

todo:  need to generalize the constructor with respect to pins for other boards

link is [here](https://github.com/waterbearfieldschool/super-mini-mesh/tree/main/firmware)

Sat 24 May 2025 12:06:23 PM EDT


note:  the design of the Thistle matches the diy promicro txco variant in meshtastic -- can just use latest firmware from there

might want to add explicity i2c pullups on next thistle so can use display 

