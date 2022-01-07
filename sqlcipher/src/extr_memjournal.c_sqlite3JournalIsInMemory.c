
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pMethods; } ;
typedef TYPE_1__ sqlite3_file ;


 int MemJournalMethods ;

int sqlite3JournalIsInMemory(sqlite3_file *p){
  return p->pMethods==&MemJournalMethods;
}
