
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct tty_acs_entry {int key; } ;



__attribute__((used)) static int
tty_acs_cmp(const void *key, const void *value)
{
 const struct tty_acs_entry *entry = value;
 u_char ch;

 ch = *(u_char *) key;
 return (ch - entry->key);
}
