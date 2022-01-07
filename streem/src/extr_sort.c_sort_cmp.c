
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;


 int strm_cmp (int ,int ) ;

__attribute__((used)) static int
sort_cmp(const void* a_p, const void* b_p)
{
  strm_value a = *(strm_value*)a_p;
  strm_value b = *(strm_value*)b_p;

  return strm_cmp(a, b);
}
