
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * BSTR ;


 int CP_ACP ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 int * SysAllocStringLen (int *,int) ;

__attribute__((used)) static BSTR a2bstr(const char *str)
{
    BSTR ret;
    int len;

    len = MultiByteToWideChar(CP_ACP, 0, str, -1, ((void*)0), 0);
    ret = SysAllocStringLen(((void*)0), len);
    MultiByteToWideChar(CP_ACP, 0, str, -1, ret, len);

    return ret;
}
