
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int fz_bidi_flags ;
typedef scalar_t__ fz_bidi_chartype ;


 int FZ_BIDI_CLASSIFY_WHITE_SPACE ;
 int* char_from_types ;
 scalar_t__ class_from_ch_n (int const) ;
 scalar_t__ class_from_ch_ws (int const) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void
classify_characters(const uint32_t *text,
  fz_bidi_chartype *types,
  size_t len,
  fz_bidi_flags flags)
{
 size_t i;

 if ((flags & FZ_BIDI_CLASSIFY_WHITE_SPACE)!=0)
 {
  for (i = 0; i < len; i++)
  {
   types[i] = class_from_ch_ws(text[i]);
  }
 }
 else
 {
  for (i = 0; i < len; i++)
  {
   types[i] = class_from_ch_n(text[i]);



  }



 }
}
