
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct keymap {int size; TYPE_1__** data; } ;
typedef enum request { ____Placeholder_request } request ;
struct TYPE_2__ {int request; } ;


 int append_key (char*,size_t*,TYPE_1__*,int) ;

__attribute__((used)) static bool
append_keymap_request_keys(char *buf, size_t *pos, enum request request,
      const struct keymap *keymap, bool all)
{
 int i;

 for (i = 0; i < keymap->size; i++) {
  if (keymap->data[i]->request == request) {
   if (!append_key(buf, pos, keymap->data[i], all))
    return 0;
   if (!all)
    break;
  }
 }

 return 1;
}
