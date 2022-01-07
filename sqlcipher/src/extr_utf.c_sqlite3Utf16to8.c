
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_8__ {scalar_t__ mallocFailed; } ;
typedef TYPE_1__ sqlite3 ;
typedef int m ;
struct TYPE_9__ {char* z; int flags; TYPE_1__* db; } ;
typedef TYPE_2__ Mem ;


 int MEM_Str ;
 int MEM_Term ;
 int SQLITE_STATIC ;
 int SQLITE_UTF8 ;
 int assert (int) ;
 int memset (TYPE_2__*,int ,int) ;
 int sqlite3VdbeChangeEncoding (TYPE_2__*,int ) ;
 int sqlite3VdbeMemRelease (TYPE_2__*) ;
 int sqlite3VdbeMemSetStr (TYPE_2__*,void const*,int,int ,int ) ;

char *sqlite3Utf16to8(sqlite3 *db, const void *z, int nByte, u8 enc){
  Mem m;
  memset(&m, 0, sizeof(m));
  m.db = db;
  sqlite3VdbeMemSetStr(&m, z, nByte, enc, SQLITE_STATIC);
  sqlite3VdbeChangeEncoding(&m, SQLITE_UTF8);
  if( db->mallocFailed ){
    sqlite3VdbeMemRelease(&m);
    m.z = 0;
  }
  assert( (m.flags & MEM_Term)!=0 || db->mallocFailed );
  assert( (m.flags & MEM_Str)!=0 || db->mallocFailed );
  assert( m.z || db->mallocFailed );
  return m.z;
}
