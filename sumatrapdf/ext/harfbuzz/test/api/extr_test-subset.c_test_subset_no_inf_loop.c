
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_subset_input_t ;
typedef int hb_set_t ;
typedef int hb_face_t ;


 int g_assert (int) ;
 int hb_face_destroy (int *) ;
 int * hb_face_get_empty () ;
 int hb_set_add (int *,char) ;
 int * hb_subset (int *,int *) ;
 int * hb_subset_input_create_or_fail () ;
 int hb_subset_input_destroy (int *) ;
 int * hb_subset_input_unicode_set (int *) ;
 int * hb_subset_test_open_font (char*) ;

__attribute__((used)) static void
test_subset_no_inf_loop (void)
{
  hb_face_t *face = hb_subset_test_open_font("fonts/clusterfuzz-testcase-minimized-hb-subset-fuzzer-5521982557782016");

  hb_subset_input_t *input = hb_subset_input_create_or_fail ();
  hb_set_t *codepoints = hb_subset_input_unicode_set (input);
  hb_set_add (codepoints, 'a');
  hb_set_add (codepoints, 'b');
  hb_set_add (codepoints, 'c');

  hb_face_t *subset = hb_subset (face, input);
  g_assert (subset);
  g_assert (subset == hb_face_get_empty ());

  hb_subset_input_destroy (input);
  hb_face_destroy (subset);
  hb_face_destroy (face);
}
