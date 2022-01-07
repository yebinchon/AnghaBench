
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TestDb ;
struct TYPE_2__ {int db; } ;
typedef TYPE_1__ LsmDb ;


 int lsm_delete_range (int ,void*,int,void*,int) ;

__attribute__((used)) static int test_lsm_delete_range(
  TestDb *pTestDb,
  void *pKey1, int nKey1,
  void *pKey2, int nKey2
){
  LsmDb *pDb = (LsmDb *)pTestDb;
  return lsm_delete_range(pDb->db, pKey1, nKey1, pKey2, nKey2);
}
