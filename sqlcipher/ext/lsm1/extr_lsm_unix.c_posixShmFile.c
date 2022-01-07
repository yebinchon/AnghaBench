
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* zName; int pEnv; } ;
typedef TYPE_1__ PosixFile ;


 scalar_t__ lsmMalloc (int ,int) ;
 int memcpy (char*,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static char *posixShmFile(PosixFile *p){
  char *zShm;
  int nName = strlen(p->zName);
  zShm = (char *)lsmMalloc(p->pEnv, nName+4+1);
  if( zShm ){
    memcpy(zShm, p->zName, nName);
    memcpy(&zShm[nName], "-shm", 5);
  }
  return zShm;
}
