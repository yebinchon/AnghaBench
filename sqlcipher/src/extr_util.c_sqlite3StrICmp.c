
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* UpperToLower ;

int sqlite3StrICmp(const char *zLeft, const char *zRight){
  unsigned char *a, *b;
  int c;
  a = (unsigned char *)zLeft;
  b = (unsigned char *)zRight;
  for(;;){
    c = (int)UpperToLower[*a] - (int)UpperToLower[*b];
    if( c || *a==0 ) break;
    a++;
    b++;
  }
  return c;
}
