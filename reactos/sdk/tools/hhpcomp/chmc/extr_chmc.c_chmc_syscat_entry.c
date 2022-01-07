
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Int16 ;


 void* chmc_syscat_mem (void*,void*,int) ;

__attribute__((used)) static void *chmc_syscat_entry(Int16 code, void *d, void *s, Int16 len)
{
 d = chmc_syscat_mem(d, &code, 2);
 d = chmc_syscat_mem(d, &len, 2);

 return chmc_syscat_mem(d, s, len);
}
