
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_set_t ;
typedef int hb_face_t ;


 int HB_TAG (char,char,char,char) ;
 int check_num_hmetrics (int *,int) ;
 int hb_face_destroy (int *) ;
 int hb_set_add (int *,char) ;
 int * hb_set_create () ;
 int hb_set_destroy (int *) ;
 int hb_subset_test_check (int *,int *,int ) ;
 int hb_subset_test_create_input (int *) ;
 int * hb_subset_test_create_subset (int *,int ) ;
 int * hb_subset_test_open_font (char*) ;

__attribute__((used)) static void
test_subset_hmtx_decrease_num_metrics (void)
{
  hb_face_t *face_abc = hb_subset_test_open_font ("fonts/Inconsolata-Regular.abc.widerc.ttf");
  hb_face_t *face_ab = hb_subset_test_open_font ("fonts/Inconsolata-Regular.ab.ttf");

  hb_set_t *codepoints = hb_set_create ();
  hb_face_t *face_abc_subset;
  hb_set_add (codepoints, 'a');
  hb_set_add (codepoints, 'b');
  face_abc_subset = hb_subset_test_create_subset (face_abc, hb_subset_test_create_input (codepoints));
  hb_set_destroy (codepoints);

  check_num_hmetrics(face_abc_subset, 1);
  hb_subset_test_check (face_ab, face_abc_subset, HB_TAG ('h','m','t','x'));

  hb_face_destroy (face_abc_subset);
  hb_face_destroy (face_abc);
  hb_face_destroy (face_ab);
}
