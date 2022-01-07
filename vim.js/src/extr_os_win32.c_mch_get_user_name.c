
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;
typedef int DWORD ;


 int FAIL ;
 scalar_t__ GetUserName (char*,int*) ;
 int NUL ;
 int OK ;
 int vim_strncpy (int *,char*,int) ;

int
mch_get_user_name(
    char_u *s,
    int len)
{
    char szUserName[256 + 1];
    DWORD cch = sizeof szUserName;

    if (GetUserName(szUserName, &cch))
    {
 vim_strncpy(s, szUserName, len - 1);
 return OK;
    }
    s[0] = NUL;
    return FAIL;
}
