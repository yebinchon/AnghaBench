
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
must_use_null_useddefaultchar(int codepage)
{
    return (codepage == 65000 || codepage == 65001 ||
            codepage == 50220 || codepage == 50221 ||
            codepage == 50222 || codepage == 50225 ||
            codepage == 50227 || codepage == 50229 ||
            codepage == 52936 || codepage == 54936 ||
            (codepage >= 57002 && codepage <= 57011) ||
            codepage == 42);
}
