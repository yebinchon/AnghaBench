
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HB_SCRIPT_BENGALI ;
 int HB_SCRIPT_DEVANAGARI ;
 int HB_SCRIPT_GUJARATI ;
 int HB_SCRIPT_GURMUKHI ;
 int HB_SCRIPT_KANNADA ;
 int HB_SCRIPT_MALAYALAM ;
 int HB_SCRIPT_MYANMAR ;
 int HB_SCRIPT_ORIYA ;
 int HB_SCRIPT_TAMIL ;
 int HB_SCRIPT_TELUGU ;
 int test_indic_tags (char*,char*,int ) ;

__attribute__((used)) static void
test_ot_tag_script_indic (void)
{
  test_indic_tags ("bng2", "beng", HB_SCRIPT_BENGALI);
  test_indic_tags ("dev2", "deva", HB_SCRIPT_DEVANAGARI);
  test_indic_tags ("gjr2", "gujr", HB_SCRIPT_GUJARATI);
  test_indic_tags ("gur2", "guru", HB_SCRIPT_GURMUKHI);
  test_indic_tags ("knd2", "knda", HB_SCRIPT_KANNADA);
  test_indic_tags ("mlm2", "mlym", HB_SCRIPT_MALAYALAM);
  test_indic_tags ("ory2", "orya", HB_SCRIPT_ORIYA);
  test_indic_tags ("tml2", "taml", HB_SCRIPT_TAMIL);
  test_indic_tags ("tel2", "telu", HB_SCRIPT_TELUGU);
  test_indic_tags ("mym2", "mymr", HB_SCRIPT_MYANMAR);
}
