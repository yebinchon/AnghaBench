
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 scalar_t__ isspace (char) ;

__attribute__((used)) static inline BOOL UXINI_isspace(WCHAR c)
{
    if (isspace(c)) return TRUE;
    if (c=='\r') return TRUE;
    return FALSE;
}
