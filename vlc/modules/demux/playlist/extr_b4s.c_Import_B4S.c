
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {int pf_control; int pf_readdir; } ;
typedef TYPE_1__ stream_t ;


 int CHECK_FILE (TYPE_1__*) ;
 int ReadDir ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int access_vaDirectoryControlHelper ;
 int stream_HasExtension (TYPE_1__*,char*) ;

int Import_B4S( vlc_object_t *p_this )
{
    stream_t *demux = (stream_t *)p_this;

    CHECK_FILE(demux);
    if( !stream_HasExtension( demux, ".b4s" ) )
        return VLC_EGENERIC;

    demux->pf_readdir = ReadDir;
    demux->pf_control = access_vaDirectoryControlHelper;

    return VLC_SUCCESS;
}
