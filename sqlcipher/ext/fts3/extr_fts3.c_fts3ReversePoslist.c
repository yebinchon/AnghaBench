
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;

__attribute__((used)) static void fts3ReversePoslist(char *pStart, char **ppPoslist){
  char *p = &(*ppPoslist)[-2];
  char c = 0;


  while( p>pStart && (c=*p--)==0 );




  while( p>pStart && (*p & 0x80) | c ){
    c = *p--;
  }
  assert( p==pStart || c==0 );
  if( p>pStart || (c==0 && *ppPoslist>&p[2]) ){ p = &p[2]; }
  while( *p++&0x80 );
  *ppPoslist = p;
}
