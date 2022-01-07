
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ RUNNING_ON_VALGRIND ;
 int assert (int) ;
 int dlclose (void*) ;

int vlc_dlclose(void *handle)
{





    int err = dlclose( handle );
    assert(err == 0);
    return err;




}
