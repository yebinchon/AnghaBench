
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MB_ERR_INVALID_CHARS ;

__attribute__((used)) static int
mbtowc_flags(int codepage)
{
    return (codepage == 50220 || codepage == 50221 ||
     codepage == 50222 || codepage == 50225 ||
     codepage == 50227 || codepage == 50229 ||
     codepage == 52936 || codepage == 54936 ||
     (codepage >= 57002 && codepage <= 57011) ||
     codepage == 65000 || codepage == 42) ? 0 : MB_ERR_INVALID_CHARS;
}
