
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fz_absi (int) ;

__attribute__((used)) static inline int paeth(int a, int b, int c)
{

 int ac = b - c, bc = a - c, abcc = ac + bc;
 int pa = fz_absi(ac);
 int pb = fz_absi(bc);
 int pc = fz_absi(abcc);
 return pa <= pb && pa <= pc ? a : pb <= pc ? b : c;
}
