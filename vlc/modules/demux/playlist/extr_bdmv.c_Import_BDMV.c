
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int uint8_t ;
struct TYPE_5__ {int pf_control; int s; int pf_readdir; } ;
typedef TYPE_1__ stream_t ;
typedef int ssize_t ;


 int CHECK_FILE (TYPE_1__*) ;
 int ReadBR ;
 char* StreamLocation (TYPE_1__*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int access_vaDirectoryControlHelper ;
 scalar_t__ memcmp (int const*,char const*,int) ;
 int stream_HasExtension (TYPE_1__*,char*) ;
 size_t strlen (char const*) ;
 int strncasecmp (char const*,char*,int) ;
 int vlc_stream_Peek (int ,int const**,int) ;

int Import_BDMV( vlc_object_t *p_this )
{
    stream_t *p_stream = (stream_t *)p_this;

    CHECK_FILE(p_stream);

    if( !stream_HasExtension( p_stream, ".BDMV" ) )
        return VLC_EGENERIC;

    const char *psz_location = StreamLocation( p_stream );
    if( psz_location == ((void*)0) )
        return VLC_EGENERIC;

    size_t len = strlen( psz_location );
    if( len < 15 )
        return VLC_EGENERIC;

    const char *psz_probe;
    const char *psz_file = &psz_location[len - 10];



    if( !strncasecmp( psz_file, "INDEX", 5 ) )
    {
        psz_probe = "INDX0200";
        p_stream->pf_readdir = ReadBR;
    }
    else
        return VLC_EGENERIC;

    const uint8_t *p_peek;
    ssize_t i_peek = vlc_stream_Peek( p_stream->s, &p_peek, 8 );
    if( i_peek < 8 || memcmp( p_peek, psz_probe, 8 ) )
        return VLC_EGENERIC;

    p_stream->pf_control = access_vaDirectoryControlHelper;

    return VLC_SUCCESS;
}
