
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* PCWSTR ;



__attribute__((used)) static
PCWSTR
NtfsGetNextPathElement(PCWSTR FileName)
{
    if (*FileName == L'\0')
    {
        return ((void*)0);
    }

    while (*FileName != L'\0' && *FileName != L'\\')
    {
        FileName++;
    }

    return FileName;
}
