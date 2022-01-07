
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;


 int VLC_UNUSED (int *) ;

__attribute__((used)) static void DemuxClose( vlc_object_t *p_this )
{
    VLC_UNUSED( p_this );
    return;
}
