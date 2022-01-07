
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ sz; void* a; scalar_t__ nRef; void* zFilename; } ;
typedef TYPE_1__ VFile ;
struct TYPE_6__ {TYPE_1__* aFile; } ;


 int MX_FILE ;
 TYPE_1__* findVFile (char const*) ;
 TYPE_2__ g ;
 int memcpy (void*,...) ;
 void* safe_realloc (int ,int) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static VFile *createVFile(const char *zName, int sz, unsigned char *pData){
  VFile *pNew = findVFile(zName);
  int i;
  if( pNew ) return pNew;
  for(i=0; i<MX_FILE && g.aFile[i].sz>=0; i++){}
  if( i>=MX_FILE ) return 0;
  pNew = &g.aFile[i];
  if( zName ){
    int nName = (int)strlen(zName)+1;
    pNew->zFilename = safe_realloc(0, nName);
    memcpy(pNew->zFilename, zName, nName);
  }else{
    pNew->zFilename = 0;
  }
  pNew->nRef = 0;
  pNew->sz = sz;
  pNew->a = safe_realloc(0, sz);
  if( sz>0 ) memcpy(pNew->a, pData, sz);
  return pNew;
}
