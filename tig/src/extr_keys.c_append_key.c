
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keybinding {int keys; int key; } ;


 int BUFSIZ ;
 char* get_key_name (int ,int ,int) ;
 int string_nformat (char*,int ,size_t*,char*,char const*,char const*) ;

__attribute__((used)) static bool
append_key(char *buf, size_t *pos, const struct keybinding *keybinding, bool all)
{
 const char *sep = *pos > 0 ? ", " : "";
 const char *keyname = get_key_name(keybinding->key, keybinding->keys, all);

 return string_nformat(buf, BUFSIZ, pos, "%s%s", sep, keyname);
}
