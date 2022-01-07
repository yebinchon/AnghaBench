
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * BSTR ;


 int CP_ACP ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 int * SysAllocStringLen (int *,int) ;

__attribute__((used)) static BSTR alloc_str_from_narrow(const char *str)
{
    int len = MultiByteToWideChar(CP_ACP, 0, str, -1, ((void*)0), 0);
    BSTR ret = SysAllocStringLen(((void*)0), len - 1);
    MultiByteToWideChar(CP_ACP, 0, str, -1, ret, len);
    return ret;
}
