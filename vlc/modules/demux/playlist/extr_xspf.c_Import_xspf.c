
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int xspf_sys_t ;
typedef int vlc_object_t ;
struct TYPE_5__ {int pf_control; int pf_readdir; int * p_sys; int s; } ;
typedef TYPE_1__ stream_t ;


 int CHECK_FILE (TYPE_1__*) ;
 int ReadDir ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int access_vaDirectoryControlHelper ;
 int * calloc (int,int) ;
 int msg_Dbg (TYPE_1__*,char*) ;
 int stream_HasExtension (TYPE_1__*,char*) ;
 int stream_IsMimeType (int ,char*) ;
 scalar_t__ unlikely (int ) ;

int Import_xspf(vlc_object_t *p_this)
{
    stream_t *p_stream = (stream_t *)p_this;

    CHECK_FILE(p_stream);

    if( !stream_HasExtension( p_stream, ".xspf" )
     && !stream_IsMimeType( p_stream->s, "application/xspf+xml" ) )
        return VLC_EGENERIC;

    xspf_sys_t *sys = calloc(1, sizeof (*sys));
    if (unlikely(sys == ((void*)0)))
        return VLC_ENOMEM;

    msg_Dbg(p_stream, "using XSPF playlist reader");
    p_stream->p_sys = sys;
    p_stream->pf_readdir = ReadDir;
    p_stream->pf_control = access_vaDirectoryControlHelper;

    return VLC_SUCCESS;
}
