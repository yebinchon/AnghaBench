
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EditDist3Config ;


 int editDist3ConfigClear (int *) ;
 int sqlite3_free (int *) ;

__attribute__((used)) static void editDist3ConfigDelete(void *pIn){
  EditDist3Config *p = (EditDist3Config*)pIn;
  editDist3ConfigClear(p);
  sqlite3_free(p);
}
