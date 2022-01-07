
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TestDb ;


 int tdb_open (char*,char*,int,int **) ;

int testControlDb(TestDb **ppDb){



  return tdb_open("sqlite3", "", 1, ppDb);

}
