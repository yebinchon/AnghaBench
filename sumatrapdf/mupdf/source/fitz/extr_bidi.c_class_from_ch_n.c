
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ fz_bidi_chartype ;


 scalar_t__ BDI_N ;
 scalar_t__ BDI_S ;
 scalar_t__ BDI_WS ;
 scalar_t__ class_from_ch_ws (int ) ;

__attribute__((used)) static fz_bidi_chartype class_from_ch_n(uint32_t ch)
{
 fz_bidi_chartype from_ch_ws = class_from_ch_ws(ch);
 if (from_ch_ws == BDI_S || from_ch_ws == BDI_WS)
  return BDI_N;
 return from_ch_ws;
}
