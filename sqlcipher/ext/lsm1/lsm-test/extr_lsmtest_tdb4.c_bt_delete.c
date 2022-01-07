
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TestDb ;


 int bt_write (int *,void*,int,int ,int) ;

__attribute__((used)) static int bt_delete(TestDb *pTestDb, void *pK, int nK){
  return bt_write(pTestDb, pK, nK, 0, -1);
}
