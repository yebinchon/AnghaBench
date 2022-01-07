
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i16 ;



__attribute__((used)) static int hasColumn(const i16 *aiCol, int nCol, int x){
  while( nCol-- > 0 ) if( x==*(aiCol++) ) return 1;
  return 0;
}
