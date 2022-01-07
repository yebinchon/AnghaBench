
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_variable {int name; } ;


 int strlen (int ) ;

__attribute__((used)) static int compare_set_qsort(const void *_l, const void *_r) {
 struct sway_variable const *l = *(void **)_l;
 struct sway_variable const *r = *(void **)_r;
 return strlen(r->name) - strlen(l->name);
}
