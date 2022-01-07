
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sort_arg {int dummy; } ;
typedef int strm_value ;
typedef int strm_int ;


 int qsort (int *,int ,int,int ) ;
 int qsort_arg (int *,int ,int,int ,struct sort_arg*) ;
 int sort_cmp ;
 int sort_cmpf ;

__attribute__((used)) static void
mem_sort(strm_value* p, strm_int len, struct sort_arg *arg)
{
  if (arg) {
    qsort_arg(p, len, sizeof(strm_value), sort_cmpf, arg);
  }
  else {
    qsort(p, len, sizeof(strm_value), sort_cmp);
  }
}
