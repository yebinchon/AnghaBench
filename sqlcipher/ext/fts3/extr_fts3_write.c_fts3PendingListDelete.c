
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PendingList ;


 int sqlite3_free (int *) ;

__attribute__((used)) static void fts3PendingListDelete(PendingList *pList){
  sqlite3_free(pList);
}
