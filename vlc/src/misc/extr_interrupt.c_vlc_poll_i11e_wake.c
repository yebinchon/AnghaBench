
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int uint64_t ;


 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;
 int write (int,int*,int) ;

__attribute__((used)) static void vlc_poll_i11e_wake(void *opaque)
{
    uint64_t value = 1;
    int *fd = opaque;
    int canc;

    canc = vlc_savecancel();
    write(fd[1], &value, sizeof (value));
    vlc_restorecancel(canc);
}
