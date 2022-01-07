
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ENOSYS ;
 int errno ;
 int fclose (int *) ;
 int fileno (int *) ;
 int * tmpfile () ;
 int vlc_dup (int ) ;

int vlc_memfd (void)
{
    errno = ENOSYS;
    return -1;

}
