
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct table {size_t sizehash; struct node* hash; int L; } ;
struct node {size_t keyhash; int keytype; int key; size_t next; scalar_t__ nocolliding; } ;


 int KEYTYPE_INTEGER ;
 int KEYTYPE_STRING ;
 char* lua_tolstring (int ,int,size_t*) ;
 scalar_t__ memcmp (char const*,char const*,size_t) ;

__attribute__((used)) static struct node *
lookup_key(struct table *tbl, uint32_t keyhash, int key, int keytype, const char *str, size_t sz) {
 if (tbl->sizehash == 0)
  return ((void*)0);
 struct node *n = &tbl->hash[keyhash % tbl->sizehash];
 if (keyhash != n->keyhash && n->nocolliding)
  return ((void*)0);
 for (;;) {
  if (keyhash == n->keyhash) {
   if (n->keytype == KEYTYPE_INTEGER) {
    if (keytype == KEYTYPE_INTEGER && n->key == key) {
     return n;
    }
   } else {

    if (keytype == KEYTYPE_STRING) {
     size_t sz2 = 0;
     const char * str2 = lua_tolstring(tbl->L, n->key, &sz2);
     if (sz == sz2 && memcmp(str,str2,sz) == 0) {
      return n;
     }
    }
   }
  }
  if (n->next < 0) {
   return ((void*)0);
  }
  n = &tbl->hash[n->next];
 }
}
