
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_2__ {int op_flags; } ;
struct vie {int addrsize; scalar_t__ displacement; TYPE_1__ op; } ;
typedef scalar_t__ int64_t ;


 int KASSERT (int,char*) ;
 int VIE_OP_F_MOFFSET ;
 int vie_advance (struct vie*) ;
 scalar_t__ vie_peek (struct vie*,scalar_t__*) ;

__attribute__((used)) static int
decode_moffset(struct vie *vie)
{
 int i, n;
 uint8_t x;
 union {
  char buf[8];
  uint64_t u64;
 } u;

 if ((vie->op.op_flags & VIE_OP_F_MOFFSET) == 0)
  return (0);





 n = vie->addrsize;
 KASSERT(n == 2 || n == 4 || n == 8, ("invalid moffset bytes: %d", n));

 u.u64 = 0;
 for (i = 0; i < n; i++) {
  if (vie_peek(vie, &x))
   return (-1);

  u.buf[i] = (char) x;
  vie_advance(vie);
 }
 vie->displacement = (int64_t) u.u64;
 return (0);
}
