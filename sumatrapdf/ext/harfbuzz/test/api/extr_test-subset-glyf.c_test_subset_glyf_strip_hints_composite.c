
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_subset_input_t ;
typedef int hb_set_t ;
typedef int hb_face_t ;


 int HB_TAG (char,char,char,char) ;
 int check_maxp_num_glyphs (int *,int,int) ;
 int hb_face_destroy (int *) ;
 int hb_set_add (int *,int) ;
 int * hb_set_create () ;
 int hb_set_destroy (int *) ;
 int hb_subset_input_set_drop_hints (int *,int) ;
 int hb_subset_test_check (int *,int *,int ) ;
 int * hb_subset_test_create_input (int *) ;
 int * hb_subset_test_create_subset (int *,int *) ;
 int * hb_subset_test_open_font (char*) ;

__attribute__((used)) static void
test_subset_glyf_strip_hints_composite (void)
{
  hb_face_t *face_components = hb_subset_test_open_font ("fonts/Roboto-Regular.components.ttf");
  hb_face_t *face_subset = hb_subset_test_open_font ("fonts/Roboto-Regular.components.1fc.nohints.ttf");

  hb_set_t *codepoints = hb_set_create();
  hb_subset_input_t *input;
  hb_face_t *face_generated_subset;
  hb_set_add (codepoints, 0x1fc);
  input = hb_subset_test_create_input (codepoints);
  hb_subset_input_set_drop_hints (input, 1);

  face_generated_subset = hb_subset_test_create_subset (face_components, input);
  hb_set_destroy (codepoints);

  hb_subset_test_check (face_subset, face_generated_subset, HB_TAG ('g','l','y','f'));
  hb_subset_test_check (face_subset, face_generated_subset, HB_TAG ('l','o','c', 'a'));
  check_maxp_num_glyphs(face_generated_subset, 4, 0);

  hb_face_destroy (face_generated_subset);
  hb_face_destroy (face_subset);
  hb_face_destroy (face_components);
}
