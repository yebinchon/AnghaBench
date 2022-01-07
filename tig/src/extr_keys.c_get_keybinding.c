
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keymap {int dummy; } ;
struct key {int dummy; } ;
typedef enum request { ____Placeholder_request } request ;


 int REQ_NONE ;
 int REQ_UNKNOWN ;
 struct keymap const* generic_keymap ;
 int get_keybinding_in_keymap (struct keymap const*,struct key const*,size_t,int*) ;
 int is_search_keymap (struct keymap const*) ;

enum request
get_keybinding(const struct keymap *keymap, const struct key key[], size_t keys, int *matches)
{
 enum request request = get_keybinding_in_keymap(keymap, key, keys, matches);

 if (!is_search_keymap(keymap)) {
  int generic_matches = 0;
  enum request generic_request = get_keybinding_in_keymap(generic_keymap, key, keys, &generic_matches);
  if (matches && (request == REQ_UNKNOWN || generic_matches > 1))
   (*matches) += generic_matches;
  if (request == REQ_UNKNOWN)
   request = generic_request;
 }

 return request == REQ_NONE ? REQ_UNKNOWN : request;
}
