
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;



__attribute__((used)) static const WCHAR* mystrrchr(const WCHAR *str, WCHAR ch)
{
    const WCHAR *pos = ((void*)0), *current = str;
    while(*current != 0) {
        if(*current == ch)
            pos = current;
        ++current;
    }
    return pos;
}
