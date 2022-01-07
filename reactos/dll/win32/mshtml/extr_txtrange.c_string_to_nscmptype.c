
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int LPCWSTR ;


 int NS_END_TO_END ;
 int NS_END_TO_START ;
 int NS_START_TO_END ;
 int NS_START_TO_START ;
 int strcmpiW (int ,char const*) ;

__attribute__((used)) static int string_to_nscmptype(LPCWSTR str)
{
    static const WCHAR seW[] = {'S','t','a','r','t','T','o','E','n','d',0};
    static const WCHAR ssW[] = {'S','t','a','r','t','T','o','S','t','a','r','t',0};
    static const WCHAR esW[] = {'E','n','d','T','o','S','t','a','r','t',0};
    static const WCHAR eeW[] = {'E','n','d','T','o','E','n','d',0};

    if(!strcmpiW(str, seW)) return NS_START_TO_END;
    if(!strcmpiW(str, ssW)) return NS_START_TO_START;
    if(!strcmpiW(str, esW)) return NS_END_TO_START;
    if(!strcmpiW(str, eeW)) return NS_END_TO_END;

    return -1;
}
