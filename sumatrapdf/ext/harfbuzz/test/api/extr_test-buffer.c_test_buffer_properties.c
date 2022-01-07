
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hb_unicode_funcs_t ;
typedef int hb_buffer_t ;
typedef int gconstpointer ;
struct TYPE_3__ {int * buffer; } ;
typedef TYPE_1__ fixture_t ;


 scalar_t__ HB_BUFFER_FLAGS_DEFAULT ;
 scalar_t__ HB_BUFFER_FLAG_BOT ;
 unsigned int HB_BUFFER_REPLACEMENT_CODEPOINT_DEFAULT ;
 scalar_t__ HB_DIRECTION_INVALID ;
 scalar_t__ HB_DIRECTION_RTL ;
 scalar_t__ HB_SCRIPT_ARABIC ;
 scalar_t__ HB_SCRIPT_INVALID ;
 int g_assert (int) ;
 int hb_buffer_clear_contents (int *) ;
 scalar_t__ hb_buffer_get_direction (int *) ;
 scalar_t__ hb_buffer_get_flags (int *) ;
 int * hb_buffer_get_language (int *) ;
 unsigned int hb_buffer_get_replacement_codepoint (int *) ;
 scalar_t__ hb_buffer_get_script (int *) ;
 scalar_t__ hb_buffer_get_unicode_funcs (int *) ;
 int hb_buffer_reset (int *) ;
 int hb_buffer_set_direction (int *,scalar_t__) ;
 int hb_buffer_set_flags (int *,scalar_t__) ;
 int hb_buffer_set_language (int *,int *) ;
 int hb_buffer_set_replacement_codepoint (int *,unsigned int) ;
 int hb_buffer_set_script (int *,scalar_t__) ;
 int hb_buffer_set_unicode_funcs (int *,int *) ;
 int * hb_language_from_string (char*,int) ;
 int * hb_unicode_funcs_create (int *) ;
 int hb_unicode_funcs_destroy (int *) ;
 scalar_t__ hb_unicode_funcs_get_default () ;

__attribute__((used)) static void
test_buffer_properties (fixture_t *fixture, gconstpointer user_data)
{
  hb_buffer_t *b = fixture->buffer;
  hb_unicode_funcs_t *ufuncs;



  g_assert (hb_buffer_get_unicode_funcs (b) == hb_unicode_funcs_get_default ());
  g_assert (hb_buffer_get_direction (b) == HB_DIRECTION_INVALID);
  g_assert (hb_buffer_get_script (b) == HB_SCRIPT_INVALID);
  g_assert (hb_buffer_get_language (b) == ((void*)0));



  ufuncs = hb_unicode_funcs_create (((void*)0));
  hb_buffer_set_unicode_funcs (b, ufuncs);
  hb_unicode_funcs_destroy (ufuncs);
  g_assert (hb_buffer_get_unicode_funcs (b) == ufuncs);

  hb_buffer_set_direction (b, HB_DIRECTION_RTL);
  g_assert (hb_buffer_get_direction (b) == HB_DIRECTION_RTL);

  hb_buffer_set_script (b, HB_SCRIPT_ARABIC);
  g_assert (hb_buffer_get_script (b) == HB_SCRIPT_ARABIC);

  hb_buffer_set_language (b, hb_language_from_string ("fa", -1));
  g_assert (hb_buffer_get_language (b) == hb_language_from_string ("Fa", -1));

  hb_buffer_set_flags (b, HB_BUFFER_FLAG_BOT);
  g_assert (hb_buffer_get_flags (b) == HB_BUFFER_FLAG_BOT);

  hb_buffer_set_replacement_codepoint (b, (unsigned int) -1);
  g_assert (hb_buffer_get_replacement_codepoint (b) == (unsigned int) -1);




  hb_buffer_clear_contents (b);

  g_assert (hb_buffer_get_unicode_funcs (b) == ufuncs);
  g_assert (hb_buffer_get_direction (b) == HB_DIRECTION_INVALID);
  g_assert (hb_buffer_get_script (b) == HB_SCRIPT_INVALID);
  g_assert (hb_buffer_get_language (b) == ((void*)0));



  g_assert (hb_buffer_get_flags (b) != HB_BUFFER_FLAGS_DEFAULT);
  g_assert (hb_buffer_get_replacement_codepoint (b) != HB_BUFFER_REPLACEMENT_CODEPOINT_DEFAULT);




  hb_buffer_set_direction (b, HB_DIRECTION_RTL);
  g_assert (hb_buffer_get_direction (b) == HB_DIRECTION_RTL);

  hb_buffer_set_script (b, HB_SCRIPT_ARABIC);
  g_assert (hb_buffer_get_script (b) == HB_SCRIPT_ARABIC);

  hb_buffer_set_language (b, hb_language_from_string ("fa", -1));
  g_assert (hb_buffer_get_language (b) == hb_language_from_string ("Fa", -1));

  hb_buffer_set_flags (b, HB_BUFFER_FLAG_BOT);
  g_assert (hb_buffer_get_flags (b) == HB_BUFFER_FLAG_BOT);

  hb_buffer_set_replacement_codepoint (b, (unsigned int) -1);
  g_assert (hb_buffer_get_replacement_codepoint (b) == (unsigned int) -1);

  hb_buffer_reset (b);

  g_assert (hb_buffer_get_unicode_funcs (b) == hb_unicode_funcs_get_default ());
  g_assert (hb_buffer_get_direction (b) == HB_DIRECTION_INVALID);
  g_assert (hb_buffer_get_script (b) == HB_SCRIPT_INVALID);
  g_assert (hb_buffer_get_language (b) == ((void*)0));
  g_assert (hb_buffer_get_flags (b) == HB_BUFFER_FLAGS_DEFAULT);
  g_assert (hb_buffer_get_replacement_codepoint (b) == HB_BUFFER_REPLACEMENT_CODEPOINT_DEFAULT);
}
