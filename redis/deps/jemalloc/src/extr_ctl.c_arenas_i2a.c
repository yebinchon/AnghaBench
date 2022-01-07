
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arenas_i2a_impl (size_t,int,int) ;

__attribute__((used)) static unsigned
arenas_i2a(size_t i) {
 return arenas_i2a_impl(i, 1, 0);
}
