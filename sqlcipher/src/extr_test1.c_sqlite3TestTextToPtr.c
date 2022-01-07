
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v2 ;
typedef int v ;
typedef int u64 ;
typedef int u32 ;
typedef int p ;


 int assert (int) ;
 int memcpy (void**,int*,int) ;
 int testHexToInt (char const) ;

void *sqlite3TestTextToPtr(const char *z){
  void *p;
  u64 v;
  u32 v2;
  if( z[0]=='0' && z[1]=='x' ){
    z += 2;
  }
  v = 0;
  while( *z ){
    v = (v<<4) + testHexToInt(*z);
    z++;
  }
  if( sizeof(p)==sizeof(v) ){
    memcpy(&p, &v, sizeof(p));
  }else{
    assert( sizeof(p)==sizeof(v2) );
    v2 = (u32)v;
    memcpy(&p, &v2, sizeof(p));
  }
  return p;
}
