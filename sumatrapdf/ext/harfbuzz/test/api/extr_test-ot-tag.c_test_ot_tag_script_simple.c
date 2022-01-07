
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HB_SCRIPT_ARABIC ;
 int HB_SCRIPT_COMMON ;
 int HB_SCRIPT_COPTIC ;
 int HB_SCRIPT_INHERITED ;
 int HB_SCRIPT_KATAKANA ;
 int HB_SCRIPT_LAO ;
 int HB_SCRIPT_LATIN ;
 int HB_SCRIPT_MANDAIC ;
 int HB_SCRIPT_MEETEI_MAYEK ;
 int HB_SCRIPT_NKO ;
 int HB_SCRIPT_UNKNOWN ;
 int HB_SCRIPT_VAI ;
 int HB_SCRIPT_YI ;
 int hb_script_from_string (char*,int) ;
 int test_simple_tags (char*,int ) ;

__attribute__((used)) static void
test_ot_tag_script_simple (void)
{

  test_simple_tags ("wwyz", hb_script_from_string ("wWyZ", -1));


  test_simple_tags ("zyyy", HB_SCRIPT_COMMON);
  test_simple_tags ("zinh", HB_SCRIPT_INHERITED);
  test_simple_tags ("zzzz", HB_SCRIPT_UNKNOWN);

  test_simple_tags ("arab", HB_SCRIPT_ARABIC);
  test_simple_tags ("copt", HB_SCRIPT_COPTIC);
  test_simple_tags ("kana", HB_SCRIPT_KATAKANA);
  test_simple_tags ("latn", HB_SCRIPT_LATIN);


  test_simple_tags ("lao ", HB_SCRIPT_LAO);
  test_simple_tags ("yi  ", HB_SCRIPT_YI);

  test_simple_tags ("nko ", HB_SCRIPT_NKO);

  test_simple_tags ("vai ", HB_SCRIPT_VAI);




  test_simple_tags ("mtei", HB_SCRIPT_MEETEI_MAYEK);

  test_simple_tags ("mand", HB_SCRIPT_MANDAIC);
}
