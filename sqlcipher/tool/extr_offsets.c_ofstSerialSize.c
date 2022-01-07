
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int ofstSerialSize(int scode){
  if( scode<5 ) return scode;
  if( scode==5 ) return 6;
  if( scode<8 ) return 8;
  if( scode<12 ) return 0;
  return (scode-12)/2;
}
