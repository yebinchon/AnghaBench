
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int paeth(int a, int b, int c)
{

 int ac = b - c, bc = a - c, abcc = ac + bc;
 int pa = (ac < 0 ? -ac : ac);
 int pb = (bc < 0 ? -bc : bc);
 int pc = (abcc < 0 ? -abcc : abcc);
 return pa <= pb && pa <= pc ? a : pb <= pc ? b : c;
}
