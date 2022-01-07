
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_subset_input_t ;
typedef int hb_set_t ;
typedef int hb_face_t ;


 int HB_TAG (char,char,char,float) ;
 int check_maxp_num_glyphs (int *,int,int) ;
 int hb_face_destroy (int *) ;
 int hb_set_add (int *,char) ;
 int * hb_set_create () ;
 int hb_set_destroy (int *) ;
 int hb_subset_input_set_drop_hints (int *,int) ;
 int hb_subset_test_check (int *,int *,int ) ;
 int * hb_subset_test_create_input (int *) ;
 int * hb_subset_test_create_subset (int *,int *) ;
 int * hb_subset_test_open_font (char*) ;

__attribute__((used)) static void
test_subset_glyf_strip_hints_simple (void)
{
  hb_face_t *face_abc = hb_subset_test_open_font ("fonts/Roboto-Regular.abc.ttf");
  hb_face_t *face_ac = hb_subset_test_open_font ("fonts/Roboto-Regular.ac.nohints.ttf");

  hb_set_t *codepoints = hb_set_create();
  hb_subset_input_t *input;
  hb_face_t *face_abc_subset;
  hb_set_add (codepoints, 'a');
  hb_set_add (codepoints, 'c');
  input = hb_subset_test_create_input (codepoints);
  hb_subset_input_set_drop_hints (input, 1);
  face_abc_subset = hb_subset_test_create_subset (face_abc, input);
  hb_set_destroy (codepoints);

  hb_subset_test_check (face_ac, face_abc_subset, HB_TAG ('l','o','c', 'a'));
  hb_subset_test_check (face_ac, face_abc_subset, HB_TAG ('g','l','y','f'));
  check_maxp_num_glyphs(face_abc_subset, 3, 0);

  hb_face_destroy (face_abc_subset);
  hb_face_destroy (face_abc);
  hb_face_destroy (face_ac);
}
