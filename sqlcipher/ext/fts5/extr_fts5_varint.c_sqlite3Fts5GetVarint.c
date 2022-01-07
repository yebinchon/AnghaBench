
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;


 int SLOT_2_0 ;
 int SLOT_4_2_0 ;
 int assert (int) ;

u8 sqlite3Fts5GetVarint(const unsigned char *p, u64 *v){
  u32 a,b,s;

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
    a |= b;
    *v = a;
    return 2;
  }


  assert( SLOT_2_0 == ((0x7f<<14) | (0x7f)) );
  assert( SLOT_4_2_0 == ((0xfU<<28) | (0x7f<<14) | (0x7f)) );

  p++;
  a = a<<14;
  a |= *p;

  if (!(a&0x80))
  {
    a &= SLOT_2_0;
    b &= 0x7f;
    b = b<<7;
    a |= b;
    *v = a;
    return 3;
  }


  a &= SLOT_2_0;
  p++;
  b = b<<14;
  b |= *p;

  if (!(b&0x80))
  {
    b &= SLOT_2_0;


    a = a<<7;
    a |= b;
    *v = a;
    return 4;
  }






  b &= SLOT_2_0;
  s = a;


  p++;
  a = a<<14;
  a |= *p;

  if (!(a&0x80))
  {



    b = b<<7;
    a |= b;
    s = s>>18;
    *v = ((u64)s)<<32 | a;
    return 5;
  }


  s = s<<7;
  s |= b;


  p++;
  b = b<<14;
  b |= *p;

  if (!(b&0x80))
  {


    a &= SLOT_2_0;
    a = a<<7;
    a |= b;
    s = s>>18;
    *v = ((u64)s)<<32 | a;
    return 6;
  }

  p++;
  a = a<<14;
  a |= *p;

  if (!(a&0x80))
  {
    a &= SLOT_4_2_0;
    b &= SLOT_2_0;
    b = b<<7;
    a |= b;
    s = s>>11;
    *v = ((u64)s)<<32 | a;
    return 7;
  }


  a &= SLOT_2_0;
  p++;
  b = b<<14;
  b |= *p;

  if (!(b&0x80))
  {
    b &= SLOT_4_2_0;


    a = a<<7;
    a |= b;
    s = s>>4;
    *v = ((u64)s)<<32 | a;
    return 8;
  }

  p++;
  a = a<<15;
  a |= *p;




  b &= SLOT_2_0;
  b = b<<8;
  a |= b;

  s = s<<4;
  b = p[-4];
  b &= 0x7f;
  b = b>>3;
  s |= b;

  *v = ((u64)s)<<32 | a;

  return 9;
}
