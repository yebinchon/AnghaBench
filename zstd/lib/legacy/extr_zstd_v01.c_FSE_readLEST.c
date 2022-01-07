
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FSE_32bits () ;
 int FSE_readLE32 (void const*) ;
 int FSE_readLE64 (void const*) ;

__attribute__((used)) static size_t FSE_readLEST(const void* memPtr)
{
    if (FSE_32bits())
        return (size_t)FSE_readLE32(memPtr);
    else
        return (size_t)FSE_readLE64(memPtr);
}
