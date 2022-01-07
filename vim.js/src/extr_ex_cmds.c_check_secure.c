
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EMSG (int ) ;
 int FALSE ;
 int TRUE ;
 int _ (int ) ;
 int e_curdir ;
 int e_sandbox ;
 scalar_t__ sandbox ;
 int secure ;

int
check_secure()
{
    if (secure)
    {
 secure = 2;
 EMSG(_(e_curdir));
 return TRUE;
    }
    return FALSE;
}
