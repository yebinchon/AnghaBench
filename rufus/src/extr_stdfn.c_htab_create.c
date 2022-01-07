
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int size; int * table; scalar_t__ filled; } ;
typedef TYPE_1__ htab_table ;
typedef int htab_entry ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 scalar_t__ calloc (int,int) ;
 int isprime (int) ;
 int uprintf (char*) ;

BOOL htab_create(uint32_t nel, htab_table* htab)
{
 if (htab == ((void*)0)) {
  return FALSE;
 }
 if (htab->table != ((void*)0)) {
  uprintf("warning: htab_create() was called with a non empty table");
  return FALSE;
 }


 nel |= 1;
 while(!isprime(nel))
  nel += 2;

 htab->size = nel;
 htab->filled = 0;


 htab->table = (htab_entry*)calloc(htab->size + 1, sizeof(htab_entry));
 if (htab->table == ((void*)0)) {
  uprintf("could not allocate space for hash table\n");
  return FALSE;
 }

 return TRUE;
}
