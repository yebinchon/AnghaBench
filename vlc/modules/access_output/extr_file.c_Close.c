
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {int* p_sys; } ;
typedef TYPE_1__ sout_access_out_t ;


 int msg_Dbg (TYPE_1__*,char*) ;
 int vlc_close (int) ;

__attribute__((used)) static void Close( vlc_object_t * p_this )
{
    sout_access_out_t *p_access = (sout_access_out_t*)p_this;
    int *fdp = p_access->p_sys, fd = *fdp;

    vlc_close(fd);
    msg_Dbg( p_access, "file access output closed" );
}
