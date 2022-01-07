
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct vie {int disp_bytes; int displacement; } ;
typedef int int8_t ;
typedef int int32_t ;


 int vie_advance (struct vie*) ;
 scalar_t__ vie_peek (struct vie*,scalar_t__*) ;
 int xhyve_abort (char*,int) ;

__attribute__((used)) static int
decode_displacement(struct vie *vie)
{
 int n, i;
 uint8_t x;

 union {
  char buf[4];
  int8_t signed8;
  int32_t signed32;
 } u;

 if ((n = vie->disp_bytes) == 0)
  return (0);

 if (n != 1 && n != 4)
  xhyve_abort("decode_displacement: invalid disp_bytes %d\n", n);

 for (i = 0; i < n; i++) {
  if (vie_peek(vie, &x))
   return (-1);

  u.buf[i] = (char) x;
  vie_advance(vie);
 }

 if (n == 1)
  vie->displacement = u.signed8;
 else
  vie->displacement = u.signed32;

 return (0);
}
