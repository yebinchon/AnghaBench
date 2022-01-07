
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_subset_input_t ;
typedef int hb_set_t ;


 int hb_set_union (int *,int const*) ;
 int * hb_subset_input_create_or_fail () ;
 int * hb_subset_input_unicode_set (int *) ;

__attribute__((used)) static inline hb_subset_input_t *
hb_subset_test_create_input(const hb_set_t *codepoints)
{
  hb_subset_input_t *input = hb_subset_input_create_or_fail ();
  hb_set_t * input_codepoints = hb_subset_input_unicode_set (input);
  hb_set_union (input_codepoints, codepoints);
  return input;
}
