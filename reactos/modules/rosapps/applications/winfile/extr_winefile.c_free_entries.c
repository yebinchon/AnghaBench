
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; struct TYPE_4__* down; } ;
typedef TYPE_1__ Entry ;


 int free_entry (TYPE_1__*) ;

__attribute__((used)) static void free_entries(Entry* dir)
{
 Entry *entry, *next=dir->down;

 if (next) {
  dir->down = 0;

  do {
   entry = next;
   next = entry->next;

   free_entries(entry);
   free_entry(entry);
  } while(next);
 }
}
