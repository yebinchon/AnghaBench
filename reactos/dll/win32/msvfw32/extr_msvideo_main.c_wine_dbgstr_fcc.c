
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* DWORD ;


 int fourcc_to_string (char*,char*) ;
 scalar_t__ isalnum (char) ;
 scalar_t__ isspace (char) ;
 char const* wine_dbg_sprintf (char*,char*) ;

__attribute__((used)) static inline const char *wine_dbgstr_fcc( DWORD fcc )
{
    char fcc_str[5];
    fourcc_to_string(fcc_str, fcc);
    fcc_str[4] = '\0';

    if (isalnum(fcc_str[0]) && isalnum(fcc_str[1]) && isalnum(fcc_str[2])
    && (isalnum(fcc_str[3]) || isspace(fcc_str[3])))
        return wine_dbg_sprintf("%s", fcc_str);
    return wine_dbg_sprintf("0x%08x", fcc);
}
