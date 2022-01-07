
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_3__ {int string_list; } ;
typedef int TLBString ;
typedef TYPE_1__ ITypeLibImpl ;
typedef int DWORD ;
typedef int * BSTR ;


 int CP_ACP ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int ) ;
 int * SysAllocStringLen (int *,int ) ;
 int SysFreeString (int *) ;
 int * TLB_append_str (int *,int *) ;

__attribute__((used)) static WORD SLTG_ReadString(const char *ptr, const TLBString **pStr, ITypeLibImpl *lib)
{
    WORD bytelen;
    DWORD len;
    BSTR tmp_str;

    *pStr = ((void*)0);
    bytelen = *(const WORD*)ptr;
    if(bytelen == 0xffff) return 2;

    len = MultiByteToWideChar(CP_ACP, 0, ptr + 2, bytelen, ((void*)0), 0);
    tmp_str = SysAllocStringLen(((void*)0), len);
    if (tmp_str) {
        MultiByteToWideChar(CP_ACP, 0, ptr + 2, bytelen, tmp_str, len);
        *pStr = TLB_append_str(&lib->string_list, tmp_str);
        SysFreeString(tmp_str);
    }
    return bytelen + 2;
}
