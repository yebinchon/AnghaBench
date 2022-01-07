
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;



__attribute__((used)) static inline int isSpace(WCHAR c)
{
    return c == ' ' || c == '\t' || c == '\n' || c == '\f';
}
