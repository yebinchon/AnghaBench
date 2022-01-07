
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ OPJ_UINT32 ;
typedef int OPJ_INT32 ;



OPJ_INT32 getValue(OPJ_UINT32 i)
{
    return ((OPJ_INT32)i % 511) - 256;
}
