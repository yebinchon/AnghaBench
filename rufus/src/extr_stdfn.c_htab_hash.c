
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int size; int filled; TYPE_1__* table; } ;
typedef TYPE_2__ htab_table ;
struct TYPE_4__ {int used; char* str; } ;


 scalar_t__ malloc (scalar_t__) ;
 int memcpy (char*,char*,scalar_t__) ;
 int safe_free (char*) ;
 scalar_t__ safe_strcmp (char*,char*) ;
 scalar_t__ safe_strlen (char*) ;
 int uprintf (char*,...) ;

uint32_t htab_hash(char* str, htab_table* htab)
{
 uint32_t hval, hval2;
 uint32_t idx;
 uint32_t r = 0;
 int c;
 char* sz = str;

 if ((htab == ((void*)0)) || (htab->table == ((void*)0)) || (str == ((void*)0))) {
  return 0;
 }




 while ((c = *sz++) != 0)
  r = c + (r << 6) + (r << 16) - r;
 if (r == 0)
  ++r;


 hval = r % htab->size;
 if (hval == 0)
  ++hval;


 idx = hval;

 if (htab->table[idx].used) {
  if ( (htab->table[idx].used == hval)
    && (safe_strcmp(str, htab->table[idx].str) == 0) ) {

   return idx;
  }



  hval2 = 1 + hval % (htab->size - 2);

  do {

   if (idx <= hval2) {
    idx = ((uint32_t)htab->size) + idx - hval2;
   } else {
    idx -= hval2;
   }


   if (idx == hval) {
    break;
   }


   if ( (htab->table[idx].used == hval)
     && (safe_strcmp(str, htab->table[idx].str) == 0) ) {
    return idx;
   }
  }
  while (htab->table[idx].used);
 }




 if (htab->filled >= htab->size) {
  uprintf("hash table is full (%d entries)", htab->size);
  return 0;
 }

 safe_free(htab->table[idx].str);
 htab->table[idx].used = hval;
 htab->table[idx].str = (char*) malloc(safe_strlen(str)+1);
 if (htab->table[idx].str == ((void*)0)) {
  uprintf("could not duplicate string for hash table\n");
  return 0;
 }
 memcpy(htab->table[idx].str, str, safe_strlen(str)+1);
 ++htab->filled;

 return idx;
}
