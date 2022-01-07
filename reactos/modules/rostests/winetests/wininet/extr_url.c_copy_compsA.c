
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* dwExtraInfoLength; void* dwUrlPathLength; void* dwPasswordLength; void* dwUserNameLength; void* dwHostNameLength; void* dwSchemeLength; } ;
typedef TYPE_1__ URL_COMPONENTSA ;
typedef void* DWORD ;


 int SetLastError (int) ;

__attribute__((used)) static void copy_compsA(
    URL_COMPONENTSA *src,
    URL_COMPONENTSA *dst,
    DWORD scheLen,
    DWORD hostLen,
    DWORD userLen,
    DWORD passLen,
    DWORD pathLen,
    DWORD extrLen )
{
    *dst = *src;
    dst->dwSchemeLength = scheLen;
    dst->dwHostNameLength = hostLen;
    dst->dwUserNameLength = userLen;
    dst->dwPasswordLength = passLen;
    dst->dwUrlPathLength = pathLen;
    dst->dwExtraInfoLength = extrLen;
    SetLastError(0xfaceabad);
}
