
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct keymap {size_t size; TYPE_1__** data; } ;
struct key {int dummy; } ;
typedef enum request { ____Placeholder_request } request ;
struct TYPE_2__ {scalar_t__ request; size_t keys; } ;


 scalar_t__ REQ_NONE ;
 int REQ_UNKNOWN ;
 scalar_t__ keybinding_matches (TYPE_1__*,struct key const*,size_t,int *) ;

__attribute__((used)) static enum request
get_keybinding_in_keymap(const struct keymap *keymap, const struct key key[], size_t keys, int *matches)
{
 enum request request = REQ_UNKNOWN;
 size_t i;

 for (i = 0; i < keymap->size; i++)
  if (keybinding_matches(keymap->data[i], key, keys, ((void*)0))) {
   if (matches && keymap->data[i]->request != REQ_NONE)
    (*matches)++;



   if (keymap->data[i]->keys == keys)
    request = keymap->data[i]->request;
  }

 return request;
}
