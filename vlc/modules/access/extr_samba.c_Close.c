
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {int * pf_readdir; TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_4__ {int i_smb; int url; } ;
typedef TYPE_2__ access_sys_t ;


 int smbc_close (int ) ;
 int smbc_closedir (int ) ;
 int vlc_UrlClean (int *) ;

__attribute__((used)) static void Close(vlc_object_t *obj)
{
    stream_t *access = (stream_t *)obj;
    access_sys_t *sys = access->p_sys;

    vlc_UrlClean(&sys->url);

    if (access->pf_readdir != ((void*)0))
        smbc_closedir(sys->i_smb);
    else
        smbc_close(sys->i_smb);
}
