
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int hb_subset_input_t ;
typedef int hb_set_t ;
typedef int hb_face_t ;
typedef char hb_codepoint_t ;


 int g_assert (int) ;
 int hb_face_destroy (int *) ;
 int * hb_face_get_empty () ;
 int hb_set_add (int *,char const) ;
 int * hb_set_create () ;
 int hb_set_destroy (int *) ;
 int hb_subset_input_set_drop_hints (int *,int) ;
 int * hb_subset_test_create_input (int *) ;
 int * hb_subset_test_create_subset (int *,int *) ;
 int * hb_subset_test_open_font (char*) ;

__attribute__((used)) static void
test_subset_glyf_strip_hints_invalid (void)
{
  hb_face_t *face = hb_subset_test_open_font ("fonts/oom-ccc61c92d589f895174cdef6ff2e3b20e9999a1a");

  hb_set_t *codepoints = hb_set_create();
  const hb_codepoint_t text[] =
  {
    'A', 'B', 'C', 'D', 'E', 'X', 'Y', 'Z', '1', '2',
    '3', '@', '_', '%', '&', ')', '*', '$', '!'
  };
  unsigned int i;
  for (i = 0; i < sizeof (text) / sizeof (hb_codepoint_t); i++)
  {
    hb_set_add (codepoints, text[i]);
  }

  hb_subset_input_t *input = hb_subset_test_create_input (codepoints);
  hb_subset_input_set_drop_hints (input, 1);
  hb_set_destroy (codepoints);

  hb_face_t *face_subset = hb_subset_test_create_subset (face, input);
  g_assert (face_subset);
  g_assert (face_subset == hb_face_get_empty ());

  hb_face_destroy (face_subset);
  hb_face_destroy (face);
}
