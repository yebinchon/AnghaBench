
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_env ;


 int BLOCK_HDR_SIZE ;
 int free (unsigned char*) ;

__attribute__((used)) static void lsmPosixOsFree(lsm_env *pEnv, void *p){
  if(p){
    free( ((unsigned char *)p) - BLOCK_HDR_SIZE );
  }
}
