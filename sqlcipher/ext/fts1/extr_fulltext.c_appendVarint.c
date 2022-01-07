
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite_int64 ;
struct TYPE_3__ {scalar_t__ nData; scalar_t__ pData; } ;
typedef TYPE_1__ DocList ;


 int VARINT_MAX ;
 int memcpy (scalar_t__,char*,int) ;
 int putVarint (char*,int ) ;
 scalar_t__ realloc (scalar_t__,scalar_t__) ;

__attribute__((used)) static void appendVarint(DocList *d, sqlite_int64 i){
  char c[VARINT_MAX];
  int n = putVarint(c, i);
  d->pData = realloc(d->pData, d->nData + n);
  memcpy(d->pData + d->nData, c, n);
  d->nData += n;
}
