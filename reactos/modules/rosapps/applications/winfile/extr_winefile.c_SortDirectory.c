
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int array ;
struct TYPE_6__ {struct TYPE_6__* next; struct TYPE_6__* down; } ;
typedef size_t SORT_ORDER ;
typedef TYPE_1__ Entry ;


 int GetProcessHeap () ;
 TYPE_1__** HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__**) ;
 int qsort (TYPE_1__**,int,int,int ) ;
 int * sortFunctions ;

__attribute__((used)) static void SortDirectory(Entry* dir, SORT_ORDER sortOrder)
{
 Entry* entry;
 Entry** array, **p;
 int len;

 len = 0;
 for(entry=dir->down; entry; entry=entry->next)
  len++;

 if (len) {
  array = HeapAlloc(GetProcessHeap(), 0, len*sizeof(Entry*));

  p = array;
  for(entry=dir->down; entry; entry=entry->next)
   *p++ = entry;


  qsort(array, len, sizeof(array[0]), sortFunctions[sortOrder]);

  dir->down = array[0];

  for(p=array; --len; p++)
   p[0]->next = p[1];

  (*p)->next = 0;

                HeapFree(GetProcessHeap(), 0, array);
 }
}
