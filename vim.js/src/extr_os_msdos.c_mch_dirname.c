
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 int FAIL ;
 int OK ;
 int * getcwd (char*,int) ;
 int slash_adjust (int *) ;

int
mch_dirname(
    char_u *buf,
    int len)
{







    return (getcwd((char *)buf, len) != ((void*)0) ? OK : FAIL);

}
