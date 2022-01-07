
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 int FAIL ;
 long FA_ARCH ;
 int OK ;
 int _chmod (char*,int,int) ;
 int _rtl_chmod (char*,int,int) ;

int
mch_setperm(
    char_u *name,
    long perm)
{
    perm |= FA_ARCH;



    return (_chmod((char *)name, 1, (int)perm) == -1 ? FAIL : OK);

}
