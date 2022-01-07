
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 int EMSG (int ) ;
 int FAIL ;
 int _ (int ) ;
 int e_screenmode ;

int
mch_screenmode(
    char_u *arg)
{
    EMSG(_(e_screenmode));
    return FAIL;
}
