
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int n; } ;
typedef TYPE_1__ Fts5Buffer ;


 int sqlite3Fts5BufferAppendBlob (int*,TYPE_1__*,int,int const*) ;
 scalar_t__ strlen (char const*) ;

void sqlite3Fts5BufferAppendString(
  int *pRc,
  Fts5Buffer *pBuf,
  const char *zStr
){
  int nStr = (int)strlen(zStr);
  sqlite3Fts5BufferAppendBlob(pRc, pBuf, nStr+1, (const u8*)zStr);
  pBuf->n--;
}
