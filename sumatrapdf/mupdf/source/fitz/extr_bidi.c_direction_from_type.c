
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_bidi_direction ;
typedef int fz_bidi_chartype ;






 int FZ_BIDI_LTR ;
 int FZ_BIDI_NEUTRAL ;
 int FZ_BIDI_RTL ;

__attribute__((used)) static fz_bidi_direction direction_from_type(fz_bidi_chartype type)
{
 switch (type)
 {
 case 129:
 case 130:
  return FZ_BIDI_LTR;

 case 128:
 case 131:
  return FZ_BIDI_RTL;

 default:
  return FZ_BIDI_NEUTRAL;
 }
}
