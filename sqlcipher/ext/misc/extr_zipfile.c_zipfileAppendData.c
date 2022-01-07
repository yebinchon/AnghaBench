
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int zErrMsg; } ;
struct TYPE_5__ {scalar_t__ szCurrent; TYPE_1__ base; int pWriteFd; } ;
typedef TYPE_2__ ZipfileTab ;


 int SEEK_SET ;
 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int fseek (int ,long,int ) ;
 size_t fwrite (int const*,int,int,int ) ;
 int sqlite3_mprintf (char*) ;

__attribute__((used)) static int zipfileAppendData(
  ZipfileTab *pTab,
  const u8 *aWrite,
  int nWrite
){
  size_t n;
  fseek(pTab->pWriteFd, (long)pTab->szCurrent, SEEK_SET);
  n = fwrite(aWrite, 1, nWrite, pTab->pWriteFd);
  if( (int)n!=nWrite ){
    pTab->base.zErrMsg = sqlite3_mprintf("error in fwrite()");
    return SQLITE_ERROR;
  }
  pTab->szCurrent += nWrite;
  return SQLITE_OK;
}
