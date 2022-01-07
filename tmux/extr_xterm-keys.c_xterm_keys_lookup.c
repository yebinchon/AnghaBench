
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct xterm_keys_entry {int key; int template; } ;
typedef int key_code ;


 int KEYC_CTRL ;
 int KEYC_ESCAPE ;
 int KEYC_MASK_KEY ;
 int KEYC_SHIFT ;
 int KEYC_XTERM ;
 size_t nitems (struct xterm_keys_entry*) ;
 size_t strcspn (char*,char*) ;
 char* xstrdup (int ) ;
 struct xterm_keys_entry* xterm_keys_table ;

char *
xterm_keys_lookup(key_code key)
{
 const struct xterm_keys_entry *entry;
 u_int i;
 key_code modifiers;
 char *out;

 modifiers = 1;
 if (key & KEYC_SHIFT)
  modifiers += 1;
 if (key & KEYC_ESCAPE)
  modifiers += 2;
 if (key & KEYC_CTRL)
  modifiers += 4;





 if (modifiers == 1)
  return (((void*)0));






 if ((key & (KEYC_ESCAPE|KEYC_XTERM)) == KEYC_ESCAPE)
  return (((void*)0));


 key &= KEYC_MASK_KEY;
 for (i = 0; i < nitems(xterm_keys_table); i++) {
  entry = &xterm_keys_table[i];
  if (key == entry->key)
   break;
 }
 if (i == nitems(xterm_keys_table))
  return (((void*)0));


 out = xstrdup(entry->template);
 out[strcspn(out, "_")] = '0' + modifiers;
 return (out);
}
