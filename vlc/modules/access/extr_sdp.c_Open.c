
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_2__ {char* p_sys; scalar_t__ psz_location; int pf_control; int pf_seek; int * pf_block; int pf_read; } ;
typedef TYPE_1__ stream_t ;


 int Control ;
 int Read ;
 int Seek ;
 int VLC_SUCCESS ;

__attribute__((used)) static int Open (vlc_object_t *obj)
{
    stream_t *access = (stream_t *)obj;

    access->pf_read = Read;
    access->pf_block = ((void*)0);
    access->pf_seek = Seek;
    access->pf_control = Control;
    access->p_sys = (char *)access->psz_location;

    return VLC_SUCCESS;
}
