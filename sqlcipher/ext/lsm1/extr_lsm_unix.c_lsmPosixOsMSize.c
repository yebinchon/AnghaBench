
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_env ;


 unsigned char* BLOCK_HDR_SIZE ;

__attribute__((used)) static size_t lsmPosixOsMSize(lsm_env *pEnv, void *p){
  unsigned char * m = (unsigned char *)p;
  return *((size_t*)(m-BLOCK_HDR_SIZE));
}
