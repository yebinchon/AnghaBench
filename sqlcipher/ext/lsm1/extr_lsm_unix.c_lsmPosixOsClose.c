
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lsm_file ;
struct TYPE_3__ {int pEnv; struct TYPE_3__* apShm; int fd; int nMap; scalar_t__ pMap; } ;
typedef TYPE_1__ PosixFile ;


 int LSM_OK ;
 int close (int ) ;
 int lsmPosixOsShmUnmap (int *,int ) ;
 int lsm_free (int ,TYPE_1__*) ;
 int munmap (scalar_t__,int ) ;

__attribute__((used)) static int lsmPosixOsClose(lsm_file *pFile){
   PosixFile *p = (PosixFile *)pFile;
   lsmPosixOsShmUnmap(pFile, 0);
   if( p->pMap ) munmap(p->pMap, p->nMap);
   close(p->fd);
   lsm_free(p->pEnv, p->apShm);
   lsm_free(p->pEnv, p);
   return LSM_OK;
}
