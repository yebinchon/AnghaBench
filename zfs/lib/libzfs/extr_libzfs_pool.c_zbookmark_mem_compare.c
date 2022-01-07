
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zbookmark_phys_t ;


 int memcmp (void const*,void const*,int) ;

__attribute__((used)) static int
zbookmark_mem_compare(const void *a, const void *b)
{
 return (memcmp(a, b, sizeof (zbookmark_phys_t)));
}
