
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int uint8_t ;
struct TYPE_5__ {int pf_control; int pf_readdir; int s; } ;
typedef TYPE_1__ stream_t ;


 int CHECK_FILE (TYPE_1__*) ;
 int ReadDir ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int access_vaDirectoryControlHelper ;
 int memcmp (int const*,char*,int) ;
 int msg_Dbg (TYPE_1__*,char*) ;
 int stream_HasExtension (TYPE_1__*,char*) ;
 int vlc_stream_Peek (int ,int const**,int) ;

int Import_RAM( vlc_object_t *p_this )
{
    stream_t *p_demux = (stream_t *)p_this;
    const uint8_t *p_peek;

    CHECK_FILE(p_demux);
    if( !stream_HasExtension( p_demux, ".ram" )
     && !stream_HasExtension( p_demux, ".rm" ) )
        return VLC_EGENERIC;


    if( vlc_stream_Peek( p_demux->s, &p_peek, 4 ) < 4 )
        return VLC_EGENERIC;
    if( !memcmp( p_peek, ".ra", 3 ) || !memcmp( p_peek, ".RMF", 4 ) )
    {
        return VLC_EGENERIC;
    }

    msg_Dbg( p_demux, "found valid RAM playlist" );
    p_demux->pf_readdir = ReadDir;
    p_demux->pf_control = access_vaDirectoryControlHelper;

    return VLC_SUCCESS;
}
