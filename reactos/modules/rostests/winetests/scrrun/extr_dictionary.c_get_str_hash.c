
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;
typedef int DWORD ;
typedef scalar_t__ CompareMethod ;


 int CharLowerW (int ) ;
 scalar_t__ DatabaseCompare ;
 int IntToPtr (scalar_t__ const) ;
 scalar_t__ PtrToInt (int ) ;
 scalar_t__ TextCompare ;

__attribute__((used)) static DWORD get_str_hash(const WCHAR *str, CompareMethod method)
{
    DWORD hash = 0;

    while (*str) {
        WCHAR ch;

        if (method == TextCompare || method == DatabaseCompare)
            ch = PtrToInt(CharLowerW(IntToPtr(*str)));
        else
            ch = *str;

        hash += (hash << 4) + ch;
        str++;
    }

    return hash % 1201;
}
