
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
typedef int u32 ;


 int assert (int) ;
 int sqlite3Fts5GetVarint (unsigned char const*,scalar_t__*) ;

int sqlite3Fts5GetVarint32(const unsigned char *p, u32 *v){
  u32 a,b;


  a = *p;

  if (!(a&0x80))
  {

    *v = a;
    return 1;
  }


  p++;
  b = *p;

  if (!(b&0x80))
  {

    a &= 0x7f;
    a = a<<7;
    *v = a | b;
    return 2;
  }


  p++;
  a = a<<14;
  a |= *p;

  if (!(a&0x80))
  {

    a &= (0x7f<<14)|(0x7f);
    b &= 0x7f;
    b = b<<7;
    *v = a | b;
    return 3;
  }
  {
    u64 v64;
    u8 n;
    p -= 2;
    n = sqlite3Fts5GetVarint(p, &v64);
    *v = ((u32)v64) & 0x7FFFFFFF;
    assert( n>3 && n<=9 );
    return n;
  }
}
