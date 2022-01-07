
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 int mch_setperm (int *,int ) ;
 int unlink (char*) ;

int
mch_remove(char_u *name)
{
    (void)mch_setperm(name, 0);
    return unlink((char *)name);
}
