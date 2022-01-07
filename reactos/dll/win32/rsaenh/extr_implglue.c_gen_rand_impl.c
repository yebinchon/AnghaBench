
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int SystemFunction036 (int *,int ) ;

BOOL gen_rand_impl(BYTE *pbBuffer, DWORD dwLen)
{
    return SystemFunction036(pbBuffer, dwLen);
}
