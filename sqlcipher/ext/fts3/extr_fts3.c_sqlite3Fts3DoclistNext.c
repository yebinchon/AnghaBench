
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ sqlite3_int64 ;


 int assert (int) ;
 int fts3PoslistCopy (int ,char**) ;
 int sqlite3Fts3GetVarint (char*,scalar_t__*) ;

void sqlite3Fts3DoclistNext(
  int bDescIdx,
  char *aDoclist,
  int nDoclist,
  char **ppIter,
  sqlite3_int64 *piDocid,
  u8 *pbEof
){
  char *p = *ppIter;

  assert( nDoclist>0 );
  assert( *pbEof==0 );
  assert( p || *piDocid==0 );
  assert( !p || (p>=aDoclist && p<=&aDoclist[nDoclist]) );

  if( p==0 ){
    p = aDoclist;
    p += sqlite3Fts3GetVarint(p, piDocid);
  }else{
    fts3PoslistCopy(0, &p);
    while( p<&aDoclist[nDoclist] && *p==0 ) p++;
    if( p>=&aDoclist[nDoclist] ){
      *pbEof = 1;
    }else{
      sqlite3_int64 iVar;
      p += sqlite3Fts3GetVarint(p, &iVar);
      *piDocid += ((bDescIdx ? -1 : 1) * iVar);
    }
  }

  *ppIter = p;
}
