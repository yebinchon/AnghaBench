
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;
typedef int * BSTR ;


 int CP_ACP ;
 scalar_t__ MultiByteToWideChar (int ,int ,char const*,int,int *,scalar_t__) ;
 int * SysAllocStringLen (int *,scalar_t__) ;

__attribute__((used)) static BSTR TLB_MultiByteToBSTR(const char *ptr)
{
    DWORD len;
    BSTR ret;

    len = MultiByteToWideChar(CP_ACP, 0, ptr, -1, ((void*)0), 0);
    ret = SysAllocStringLen(((void*)0), len - 1);
    if (!ret) return ret;
    MultiByteToWideChar(CP_ACP, 0, ptr, -1, ret, len);
    return ret;
}
