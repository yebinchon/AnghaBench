
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;
typedef int DWORD ;


 int GetComputerName (int *,int*) ;
 int vim_strncpy (int *,char*,int) ;

void
mch_get_host_name(
    char_u *s,
    int len)
{
    DWORD cch = len;

    if (!GetComputerName(s, &cch))
 vim_strncpy(s, "PC (Win32 Vim)", len - 1);
}
