
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {int * psz_filepath; } ;
typedef TYPE_1__ stream_t ;
typedef int DIR ;


 int DirInit (TYPE_1__*,int *) ;
 int VLC_EGENERIC ;
 int * vlc_opendir (int *) ;

int DirOpen (vlc_object_t *obj)
{
    stream_t *access = (stream_t *)obj;

    if (access->psz_filepath == ((void*)0))
        return VLC_EGENERIC;

    DIR *dir = vlc_opendir(access->psz_filepath);
    if (dir == ((void*)0))
        return VLC_EGENERIC;

    return DirInit(access, dir);
}
