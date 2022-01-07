
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_tag_t ;
typedef int hb_face_t ;
typedef int hb_blob_t ;


 int HB_UNTAG (int ) ;
 int fprintf (int ,char*,int) ;
 int hb_blob_destroy (int *) ;
 int * hb_face_reference_table (int *,int ) ;
 int hb_test_assert_blobs_equal (int *,int *) ;
 int stderr ;

__attribute__((used)) static inline void
hb_subset_test_check (hb_face_t *expected,
                      hb_face_t *actual,
                      hb_tag_t table)
{
  hb_blob_t *expected_blob, *actual_blob;
  fprintf(stderr, "compare %c%c%c%c\n", HB_UNTAG(table));
  expected_blob = hb_face_reference_table (expected, table);
  actual_blob = hb_face_reference_table (actual, table);
  hb_test_assert_blobs_equal (expected_blob, actual_blob);
  hb_blob_destroy (expected_blob);
  hb_blob_destroy (actual_blob);
}
