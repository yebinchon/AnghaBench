
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;


 scalar_t__ XXH_CPU_LITTLE_ENDIAN ;
 int XXH_read32 (void const*) ;
 int XXH_swap32 (int ) ;

__attribute__((used)) static U32 XXH_readBE32(const void* ptr)
{
    return XXH_CPU_LITTLE_ENDIAN ? XXH_swap32(XXH_read32(ptr)) : XXH_read32(ptr);
}
