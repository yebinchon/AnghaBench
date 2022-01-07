
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct key {int dummy; } ;
struct TYPE_3__ {int font; } ;
struct TYPE_4__ {TYPE_1__ key; } ;


 unsigned int MAXGLYPHS ;
 TYPE_2__* g_table ;
 unsigned int hashfunc (struct key*) ;
 int memcmp (struct key*,TYPE_1__*,int) ;

__attribute__((used)) static unsigned int lookup_table(struct key *key)
{
 unsigned int pos = hashfunc(key) % MAXGLYPHS;
 while (1)
 {
  if (!g_table[pos].key.font)
   return pos;
  if (!memcmp(key, &g_table[pos].key, sizeof(struct key)))
   return pos;
  pos = (pos + 1) % MAXGLYPHS;
 }
}
