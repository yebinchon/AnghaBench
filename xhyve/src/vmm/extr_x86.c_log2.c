
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int fls (int) ;
 int powerof2 (int) ;

__attribute__((used)) static __inline int
log2(u_int x)
{

 return (fls((int) (x << (1 - powerof2(x)))) - 1);
}
