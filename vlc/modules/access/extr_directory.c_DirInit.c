
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pf_control; int pf_readdir; TYPE_2__* p_sys; int psz_filepath; int psz_location; int psz_name; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_7__ {int * dir; int * base_uri; } ;
typedef TYPE_2__ access_sys_t ;
typedef int DIR ;


 int DirRead ;
 int VLC_ENOMEM ;
 int VLC_OBJECT (TYPE_1__*) ;
 int VLC_SUCCESS ;
 int access_vaDirectoryControlHelper ;
 int asprintf (int **,char*,int ) ;
 int closedir (int *) ;
 int strcmp (int ,char*) ;
 scalar_t__ unlikely (int) ;
 TYPE_2__* vlc_obj_malloc (int ,int) ;
 int * vlc_path2uri (int ,char*) ;

int DirInit (stream_t *access, DIR *dir)
{
    access_sys_t *sys = vlc_obj_malloc(VLC_OBJECT(access), sizeof (*sys));
    if (unlikely(sys == ((void*)0)))
        goto error;

    if (!strcmp(access->psz_name, "fd"))
    {
        if (unlikely(asprintf(&sys->base_uri, "fd://%s",
                              access->psz_location) == -1))
            sys->base_uri = ((void*)0);
    }
    else
        sys->base_uri = vlc_path2uri(access->psz_filepath, "file");
    if (unlikely(sys->base_uri == ((void*)0)))
        goto error;

    sys->dir = dir;

    access->p_sys = sys;
    access->pf_readdir = DirRead;
    access->pf_control = access_vaDirectoryControlHelper;
    return VLC_SUCCESS;

error:
    closedir(dir);
    return VLC_ENOMEM;
}
