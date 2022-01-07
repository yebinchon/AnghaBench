
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TestDb ;


 int tdb_close (int *) ;

void testClose(TestDb **ppDb){
  tdb_close(*ppDb);
  *ppDb = 0;
}
