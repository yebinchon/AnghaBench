
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_int ;



__attribute__((used)) static void
mp_exch (mp_int * a, mp_int * b)
{
  mp_int t;

  t = *a;
  *a = *b;
  *b = t;
}
