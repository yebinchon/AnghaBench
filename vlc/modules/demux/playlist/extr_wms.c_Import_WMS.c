
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int uint8_t ;
struct TYPE_4__ {int pf_control; int pf_readdir; int s; } ;
typedef TYPE_1__ stream_t ;


 int CHECK_FILE (TYPE_1__*) ;
 int ReadDir ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int access_vaDirectoryControlHelper ;
 int msg_Dbg (TYPE_1__*,char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int vlc_stream_Peek (int ,int const**,int) ;

int Import_WMS(vlc_object_t *obj)
{
    stream_t *demux = (stream_t *)obj;
    const uint8_t *peek;

    CHECK_FILE(demux);

    if (vlc_stream_Peek(demux->s, &peek, 10) < 10
     || strncmp((const char *)peek, "[Reference]", 11))
        return VLC_EGENERIC;

    msg_Dbg(demux, "found WMS metafile");
    demux->pf_readdir = ReadDir;
    demux->pf_control = access_vaDirectoryControlHelper;
    return VLC_SUCCESS;
}
