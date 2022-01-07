
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int BOOL ;


 scalar_t__ isalnumW (char) ;

__attribute__((used)) static inline BOOL is_identifier_char(WCHAR c)
{
    return isalnumW(c) || c == '_';
}
