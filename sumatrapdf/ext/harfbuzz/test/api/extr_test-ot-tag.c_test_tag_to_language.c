
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_tag_t ;
typedef scalar_t__ hb_language_t ;


 int g_assert (int) ;
 int g_test_message (char*,char const*,char const*) ;
 scalar_t__ hb_language_from_string (char const*,int) ;
 scalar_t__ hb_ot_tag_to_language (int ) ;
 int hb_tag_from_string (char const*,int) ;

__attribute__((used)) static void
test_tag_to_language (const char *tag_s, const char *lang_s)
{
  hb_language_t lang = hb_language_from_string (lang_s, -1);
  hb_tag_t tag = hb_tag_from_string (tag_s, -1);

  g_test_message ("Testing tag %s -> language %s", tag_s, lang_s);

  g_assert (lang == hb_ot_tag_to_language (tag));
}
