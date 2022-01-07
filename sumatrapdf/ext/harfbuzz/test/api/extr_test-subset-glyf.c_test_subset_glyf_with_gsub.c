
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
 int hb_subset_input_set_drop_layout (int *,int) ;
 int hb_subset_test_check (int *,int *,int ) ;
 int * hb_subset_test_create_input (int *) ;
 int * hb_subset_test_create_subset (int *,int *) ;
 int * hb_subset_test_open_font (char*) ;

__attribute__((used)) static void
test_subset_glyf_with_gsub (void)
{
  hb_face_t *face_fil = hb_subset_test_open_font ("fonts/Roboto-Regular.gsub.fil.ttf");
  hb_face_t *face_fi = hb_subset_test_open_font ("fonts/Roboto-Regular.gsub.fi.ttf");

  hb_set_t *codepoints = hb_set_create();
  hb_set_add (codepoints, 102);
  hb_set_add (codepoints, 105);

  hb_subset_input_t *input = hb_subset_test_create_input (codepoints);
  hb_set_destroy (codepoints);
  hb_subset_input_set_drop_layout (input, 0);

  hb_face_t *face_subset = hb_subset_test_create_subset (face_fil, input);

  hb_subset_test_check (face_fi, face_subset, HB_TAG ('g','l','y','f'));
  hb_subset_test_check (face_fi, face_subset, HB_TAG ('l','o','c', 'a'));
  check_maxp_num_glyphs(face_subset, 5, 1);

  hb_face_destroy (face_subset);
  hb_face_destroy (face_fi);
  hb_face_destroy (face_fil);
}
