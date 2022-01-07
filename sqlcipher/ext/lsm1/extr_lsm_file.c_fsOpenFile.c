
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lsm_file ;
struct TYPE_3__ {char* zLog; char* zDb; int pEnv; } ;
typedef TYPE_1__ FileSystem ;


 int LSM_OK ;
 int LSM_OPEN_READONLY ;
 int lsmEnvOpen (int ,char const*,int,int **) ;

__attribute__((used)) static lsm_file *fsOpenFile(
  FileSystem *pFS,
  int bReadonly,
  int bLog,
  int *pRc
){
  lsm_file *pFile = 0;
  if( *pRc==LSM_OK ){
    int flags = (bReadonly ? LSM_OPEN_READONLY : 0);
    const char *zPath = (bLog ? pFS->zLog : pFS->zDb);

    *pRc = lsmEnvOpen(pFS->pEnv, zPath, flags, &pFile);
  }
  return pFile;
}
