
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int BOOL ;


 scalar_t__ is_ncnamechar (char) ;

__attribute__((used)) static inline BOOL is_namechar(WCHAR ch)
{
    return (ch == ':') || is_ncnamechar(ch);
}
