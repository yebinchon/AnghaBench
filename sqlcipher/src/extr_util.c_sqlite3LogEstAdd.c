
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LogEst ;



LogEst sqlite3LogEstAdd(LogEst a, LogEst b){
  static const unsigned char x[] = {
     10, 10,
      9, 9,
      8, 8,
      7, 7, 7,
      6, 6, 6,
      5, 5, 5,
      4, 4, 4, 4,
      3, 3, 3, 3, 3, 3,
      2, 2, 2, 2, 2, 2, 2,
  };
  if( a>=b ){
    if( a>b+49 ) return a;
    if( a>b+31 ) return a+1;
    return a+x[a-b];
  }else{
    if( b>a+49 ) return b;
    if( b>a+31 ) return b+1;
    return b+x[b-a];
  }
}
