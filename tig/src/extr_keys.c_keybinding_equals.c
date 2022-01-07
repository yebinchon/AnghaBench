
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keybinding {size_t keys; } ;
struct key {int dummy; } ;


 int keybinding_matches (struct keybinding const*,struct key const*,size_t,int*) ;

__attribute__((used)) static bool
keybinding_equals(const struct keybinding *keybinding, const struct key key[],
    size_t keys, bool *conflict_ptr)
{
 if (keybinding->keys != keys)
  return 0;
 return keybinding_matches(keybinding, key, keys, conflict_ptr);
}
