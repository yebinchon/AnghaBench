
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_2__ {int* p_sys; } ;
typedef TYPE_1__ stream_t ;


 int vlc_close (int) ;

__attribute__((used)) static void Close( vlc_object_t * p_this )
{
    stream_t *p_access = ( stream_t* )p_this;
    int *fdp = p_access->p_sys;

    vlc_close ( *fdp );
}
