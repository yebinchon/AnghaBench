
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {int pf_control; int pf_readdir; } ;
typedef TYPE_1__ stream_t ;


 int CHECK_FILE (TYPE_1__*) ;
 int ReadDir ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int access_vaDirectoryControlHelper ;
 int msg_Dbg (TYPE_1__*,char*) ;
 int stream_HasExtension (TYPE_1__*,char*) ;

int Import_QTL( vlc_object_t *p_this )
{
    stream_t *p_demux = (stream_t *)p_this;

    CHECK_FILE(p_demux);
    if( !stream_HasExtension( p_demux, ".qtl" ) )
        return VLC_EGENERIC;

    p_demux->pf_readdir = ReadDir;
    p_demux->pf_control = access_vaDirectoryControlHelper;
    msg_Dbg( p_demux, "using QuickTime Media Link reader" );

    return VLC_SUCCESS;
}
