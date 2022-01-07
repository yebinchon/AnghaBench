
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_key {int key; } ;
struct tty {int key_tree; } ;
typedef int key_code ;


 char* key_string_lookup_key (int ) ;
 int log_debug (char*,char const*,int ,char const*) ;
 int strlen (char const*) ;
 int tty_keys_add1 (int *,char const*,int ) ;
 struct tty_key* tty_keys_find (struct tty*,char const*,int ,size_t*) ;

__attribute__((used)) static void
tty_keys_add(struct tty *tty, const char *s, key_code key)
{
 struct tty_key *tk;
 size_t size;
 const char *keystr;

 keystr = key_string_lookup_key(key);
 if ((tk = tty_keys_find(tty, s, strlen(s), &size)) == ((void*)0)) {
  log_debug("new key %s: 0x%llx (%s)", s, key, keystr);
  tty_keys_add1(&tty->key_tree, s, key);
 } else {
  log_debug("replacing key %s: 0x%llx (%s)", s, key, keystr);
  tk->key = key;
 }
}
