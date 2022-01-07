
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_workspace {int * name; } ;


 scalar_t__ isdigit (int ) ;
 int strtol (int *,int *,int) ;

__attribute__((used)) static int sort_workspace_cmp_qsort(const void *_a, const void *_b) {
 struct sway_workspace *a = *(void **)_a;
 struct sway_workspace *b = *(void **)_b;

 if (isdigit(a->name[0]) && isdigit(b->name[0])) {
  int a_num = strtol(a->name, ((void*)0), 10);
  int b_num = strtol(b->name, ((void*)0), 10);
  return (a_num < b_num) ? -1 : (a_num > b_num);
 } else if (isdigit(a->name[0])) {
  return -1;
 } else if (isdigit(b->name[0])) {
  return 1;
 }
 return 0;
}
