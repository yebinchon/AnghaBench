
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_vfs ;
struct TYPE_5__ {int * pMethods; } ;
typedef TYPE_1__ sqlite3_file ;
struct TYPE_6__ {unsigned char* aData; scalar_t__ sz; scalar_t__ szMax; int bFreeOnClose; } ;
typedef TYPE_2__ MemFile ;


 int SQLITE_CANTOPEN ;
 int SQLITE_OK ;
 int SQLITE_OPEN_MAIN_DB ;
 int mem_io_methods ;
 int memset (TYPE_2__*,int ,int) ;
 int sqlite3_uri_boolean (char const*,char*,int ) ;
 void* sqlite3_uri_int64 (char const*,char*,scalar_t__) ;

__attribute__((used)) static int memOpen(
  sqlite3_vfs *pVfs,
  const char *zName,
  sqlite3_file *pFile,
  int flags,
  int *pOutFlags
){
  MemFile *p = (MemFile*)pFile;
  memset(p, 0, sizeof(*p));
  if( (flags & SQLITE_OPEN_MAIN_DB)==0 ) return SQLITE_CANTOPEN;
  p->aData = (unsigned char*)sqlite3_uri_int64(zName,"ptr",0);
  if( p->aData==0 ) return SQLITE_CANTOPEN;
  p->sz = sqlite3_uri_int64(zName,"sz",0);
  if( p->sz<0 ) return SQLITE_CANTOPEN;
  p->szMax = sqlite3_uri_int64(zName,"max",p->sz);
  if( p->szMax<p->sz ) return SQLITE_CANTOPEN;
  p->bFreeOnClose = sqlite3_uri_boolean(zName,"freeonclose",0);
  pFile->pMethods = &mem_io_methods;
  return SQLITE_OK;
}
