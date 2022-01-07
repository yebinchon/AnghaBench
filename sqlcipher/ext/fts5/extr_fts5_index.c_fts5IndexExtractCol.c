
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int fts5GetVarint32 (int const*,int) ;

__attribute__((used)) static int fts5IndexExtractCol(
  const u8 **pa,
  int n,
  int iCol
){
  int iCurrent = 0;
  const u8 *p = *pa;
  const u8 *pEnd = &p[n];

  while( iCol>iCurrent ){





    while( *p!=0x01 ){
      while( *p++ & 0x80 );
      if( p>=pEnd ) return 0;
    }
    *pa = p++;
    iCurrent = *p++;
    if( iCurrent & 0x80 ){
      p--;
      p += fts5GetVarint32(p, iCurrent);
    }
  }
  if( iCol!=iCurrent ) return 0;



  while( p<pEnd && *p!=0x01 ){
    while( *p++ & 0x80 );
  }

  return p - (*pa);
}
