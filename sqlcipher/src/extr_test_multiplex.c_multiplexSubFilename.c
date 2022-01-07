
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct multiplexReal {scalar_t__ z; } ;
typedef int p ;
struct TYPE_3__ {int nReal; int nName; int flags; scalar_t__ zName; struct multiplexReal* aReal; } ;
typedef TYPE_1__ multiplexGroup ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int memset (struct multiplexReal*,int ,int) ;
 int multiplexFilename (scalar_t__,int,int ,int,char*) ;
 char* sqlite3_malloc64 (int) ;
 struct multiplexReal* sqlite3_realloc64 (struct multiplexReal*,int) ;

__attribute__((used)) static int multiplexSubFilename(multiplexGroup *pGroup, int iChunk){
  if( iChunk>=pGroup->nReal ){
    struct multiplexReal *p;
    p = sqlite3_realloc64(pGroup->aReal, (iChunk+1)*sizeof(*p));
    if( p==0 ){
      return SQLITE_NOMEM;
    }
    memset(&p[pGroup->nReal], 0, sizeof(p[0])*(iChunk+1-pGroup->nReal));
    pGroup->aReal = p;
    pGroup->nReal = iChunk+1;
  }
  if( pGroup->zName && pGroup->aReal[iChunk].z==0 ){
    char *z;
    int n = pGroup->nName;
    pGroup->aReal[iChunk].z = z = sqlite3_malloc64( n+5 );
    if( z==0 ){
      return SQLITE_NOMEM;
    }
    multiplexFilename(pGroup->zName, pGroup->nName, pGroup->flags, iChunk, z);
  }
  return SQLITE_OK;
}
