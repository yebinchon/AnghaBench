
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;
typedef int Opcode ;


 int BITSPERCHAR ;
 int CHARSETSIZE ;
 int IAny ;
 int IChar ;
 int IFail ;
 int ISet ;
 int assert (int) ;

__attribute__((used)) static Opcode charsettype (const byte *cs, int *c) {
  int count = 0;
  int i;
  int candidate = -1;
  for (i = 0; i < CHARSETSIZE; i++) {
    int b = cs[i];
    if (b == 0) {
      if (count > 1)
        return ISet;

    }
    else if (b == 0xFF) {
      if (count < (i * BITSPERCHAR))
        return ISet;
      else count += BITSPERCHAR;
    }
    else if ((b & (b - 1)) == 0) {
      if (count > 0)
        return ISet;
      else {
        count++;
        candidate = i;
      }
    }
    else return ISet;
  }
  switch (count) {
    case 0: return IFail;
    case 1: {
      int b = cs[candidate];
      *c = candidate * BITSPERCHAR;
      if ((b & 0xF0) != 0) { *c += 4; b >>= 4; }
      if ((b & 0x0C) != 0) { *c += 2; b >>= 2; }
      if ((b & 0x02) != 0) { *c += 1; }
      return IChar;
    }
    default: {
       assert(count == CHARSETSIZE * BITSPERCHAR);
       return IAny;
    }
  }
}
