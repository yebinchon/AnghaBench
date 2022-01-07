
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int ptr; } ;
typedef TYPE_1__ xmlstr_t ;
typedef scalar_t__ WCHAR ;


 scalar_t__* RtlAllocateHeap (int ,int ,int) ;
 int RtlGetProcessHeap () ;
 int memcpy (scalar_t__*,int ,int) ;

__attribute__((used)) static WCHAR *xmlstrdupW(const xmlstr_t* str)
{
    WCHAR *strW;

    if ((strW = RtlAllocateHeap(RtlGetProcessHeap(), 0, (str->len + 1) * sizeof(WCHAR))))
    {
        memcpy( strW, str->ptr, str->len * sizeof(WCHAR) );
        strW[str->len] = 0;
    }
    return strW;
}
