
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_uint64 ;
struct TYPE_4__ {int n; int nAlloc; int oomErr; char* z; } ;
typedef TYPE_1__ Str ;


 int memcpy (char*,char const*,size_t) ;
 int memset (TYPE_1__*,int ,int) ;
 int sqlite3_free (char*) ;
 char* sqlite3_realloc (char*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static void StrAppend(Str *p, const char *z){
  sqlite3_uint64 n = strlen(z);
  if( p->n + n >= p->nAlloc ){
    char *zNew;
    sqlite3_uint64 nNew;
    if( p->oomErr ) return;
    nNew = p->nAlloc*2 + 100 + n;
    zNew = sqlite3_realloc(p->z, (int)nNew);
    if( zNew==0 ){
      sqlite3_free(p->z);
      memset(p, 0, sizeof(*p));
      p->oomErr = 1;
      return;
    }
    p->z = zNew;
    p->nAlloc = nNew;
  }
  memcpy(p->z + p->n, z, (size_t)n);
  p->n += n;
  p->z[p->n] = 0;
}
