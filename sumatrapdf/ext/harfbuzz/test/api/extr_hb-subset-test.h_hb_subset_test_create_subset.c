
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_subset_input_t ;
typedef int hb_face_t ;


 int g_assert (int *) ;
 int * hb_subset (int *,int *) ;
 int hb_subset_input_destroy (int *) ;

__attribute__((used)) static inline hb_face_t *
hb_subset_test_create_subset (hb_face_t *source,
                              hb_subset_input_t *input)
{
  hb_face_t *subset = hb_subset (source, input);
  g_assert (subset);

  hb_subset_input_destroy (input);
  return subset;
}
