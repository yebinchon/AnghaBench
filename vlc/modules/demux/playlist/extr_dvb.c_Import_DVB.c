
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int uint8_t ;
struct TYPE_6__ {int force; } ;
struct TYPE_7__ {int pf_readdir; int pf_control; int s; TYPE_1__ obj; } ;
typedef TYPE_2__ stream_t ;
typedef int input_item_t ;


 int CHECK_FILE (TYPE_2__*) ;
 int * ParseLine (char*) ;
 int ReadDir ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int access_vaDirectoryControlHelper ;
 int input_item_Release (int *) ;
 int * memchr (int const*,char,int) ;
 int memcpy (char*,int const*,int) ;
 int msg_Dbg (TYPE_2__*,char*) ;
 int stream_HasExtension (TYPE_2__*,char*) ;
 int vlc_stream_Peek (int ,int const**,int) ;

int Import_DVB(vlc_object_t *p_this)
{
    stream_t *demux = (stream_t *)p_this;

    CHECK_FILE(demux);
    if (!stream_HasExtension(demux, ".conf" ) && !demux->obj.force )
        return VLC_EGENERIC;


    const uint8_t *peek;
    int len = vlc_stream_Peek(demux->s, &peek, 1023);
    if (len <= 0)
        return VLC_EGENERIC;

    const uint8_t *eol = memchr(peek, '\n', len);
    if (eol == ((void*)0))
        return VLC_EGENERIC;
    len = eol - peek;

    char line[len + 1];
    memcpy(line, peek, len);
    line[len] = '\0';

    input_item_t *item = ParseLine(line);
    if (item == ((void*)0))
        return VLC_EGENERIC;
    input_item_Release(item);

    msg_Dbg(demux, "found valid channels.conf file");
    demux->pf_control = access_vaDirectoryControlHelper;
    demux->pf_readdir = ReadDir;

    return VLC_SUCCESS;
}
