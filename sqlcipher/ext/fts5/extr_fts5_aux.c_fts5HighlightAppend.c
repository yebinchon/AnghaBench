
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ zOut; } ;
typedef TYPE_1__ HighlightContext ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 scalar_t__ sqlite3_mprintf (char*,scalar_t__,int,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void fts5HighlightAppend(
  int *pRc,
  HighlightContext *p,
  const char *z, int n
){
  if( *pRc==SQLITE_OK && z ){
    if( n<0 ) n = (int)strlen(z);
    p->zOut = sqlite3_mprintf("%z%.*s", p->zOut, n, z);
    if( p->zOut==0 ) *pRc = SQLITE_NOMEM;
  }
}
