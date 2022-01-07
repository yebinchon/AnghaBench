
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_set_t ;
typedef int hb_face_t ;


 int HB_TAG (char,char,char,char) ;
 int check_num_vmetrics (int *,int) ;
 int hb_face_destroy (int *) ;
 int hb_set_add (int *,int) ;
 int * hb_set_create () ;
 int hb_set_destroy (int *) ;
 int hb_subset_test_check (int *,int *,int ) ;
 int hb_subset_test_create_input (int *) ;
 int * hb_subset_test_create_subset (int *,int ) ;
 int * hb_subset_test_open_font (char*) ;

__attribute__((used)) static void
test_subset_vmtx_noop (void)
{
  hb_face_t *face_full = hb_subset_test_open_font ("fonts/Mplus1p-Regular.660E,6975,73E0,5EA6,8F38,6E05.ttf");

  hb_set_t *codepoints = hb_set_create();
  hb_set_add (codepoints, 0x660E);
  hb_set_add (codepoints, 0x6975);
  hb_set_add (codepoints, 0x73E0);
  hb_set_add (codepoints, 0x5EA6);
  hb_set_add (codepoints, 0x8F38);
  hb_set_add (codepoints, 0x6E05);
  hb_face_t *face_full_subset = hb_subset_test_create_subset (face_full, hb_subset_test_create_input (codepoints));
  hb_set_destroy (codepoints);

  check_num_vmetrics(face_full_subset, 1);
  hb_subset_test_check (face_full, face_full_subset, HB_TAG ('v','m','t','x'));

  hb_face_destroy (face_full_subset);
  hb_face_destroy (face_full);
}
