
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static __inline int
vlapic_get_lvt_field(uint32_t lvt, uint32_t mask)
{

 return ((int) (lvt & mask));
}
