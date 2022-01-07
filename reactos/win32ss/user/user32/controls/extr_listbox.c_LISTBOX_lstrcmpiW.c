
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;
typedef int LCID ;
typedef scalar_t__ INT ;


 scalar_t__ CSTR_EQUAL ;
 scalar_t__ CSTR_GREATER_THAN ;
 scalar_t__ CSTR_LESS_THAN ;
 scalar_t__ CompareStringW (int ,int ,int ,int,int ,int) ;
 int NORM_IGNORECASE ;

__attribute__((used)) static inline INT LISTBOX_lstrcmpiW( LCID lcid, LPCWSTR str1, LPCWSTR str2 )
{
    INT ret = CompareStringW( lcid, NORM_IGNORECASE, str1, -1, str2, -1 );
    if (ret == CSTR_LESS_THAN)
        return -1;
    if (ret == CSTR_EQUAL)
        return 0;
    if (ret == CSTR_GREATER_THAN)
        return 1;
    return -1;
}
