
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct xterm_keys_entry {int key; int template; } ;
typedef int key_code ;


 int KEYC_XTERM ;
 size_t nitems (struct xterm_keys_entry*) ;
 int xterm_keys_match (int ,char const*,size_t,size_t*,int*) ;
 struct xterm_keys_entry* xterm_keys_table ;

int
xterm_keys_find(const char *buf, size_t len, size_t *size, key_code *key)
{
 const struct xterm_keys_entry *entry;
 u_int i;
 int matched;
 key_code modifiers;

 for (i = 0; i < nitems(xterm_keys_table); i++) {
  entry = &xterm_keys_table[i];

  matched = xterm_keys_match(entry->template, buf, len, size,
      &modifiers);
  if (matched == -1)
   continue;
  if (matched == 0)
   *key = (entry->key|modifiers|KEYC_XTERM);
  return (matched);
 }
 return (-1);
}
