
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; int * items; } ;
typedef TYPE_1__ list_t ;


 char* find_icon_in_dir (char*,int ,int*,int*) ;

__attribute__((used)) static char *find_fallback_icon(list_t *basedirs, char *name, int *min_size,
  int *max_size) {
 for (int i = 0; i < basedirs->length; ++i) {
  char *icon = find_icon_in_dir(name, basedirs->items[i], min_size, max_size);
  if (icon) {
   return icon;
  }
 }
 return ((void*)0);
}
