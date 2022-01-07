
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_6__ {int pf_readdir; int pf_control; int s; } ;
typedef TYPE_1__ stream_t ;


 int CHECK_FILE (TYPE_1__*) ;
 scalar_t__ PeekASX (TYPE_1__*) ;
 int ReadDir ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int access_vaDirectoryControlHelper ;
 int free (char*) ;
 int msg_Dbg (TYPE_1__*,char*) ;
 scalar_t__ strcasecmp (char*,char*) ;
 scalar_t__ stream_HasExtension (TYPE_1__*,char*) ;
 char* stream_MimeType (int ) ;

int Import_ASX( vlc_object_t *p_this )
{
    stream_t *p_demux = (stream_t *)p_this;

    CHECK_FILE(p_demux);

    char *type = stream_MimeType( p_demux->s );

    if( stream_HasExtension( p_demux, ".asx" )
     || stream_HasExtension( p_demux, ".wax" )
     || stream_HasExtension( p_demux, ".wvx" )
     || (type != ((void*)0) && (strcasecmp(type, "video/x-ms-asf") == 0
                       || strcasecmp(type, "audio/x-ms-wax") == 0)
                      && PeekASX( p_demux ) ) )
    {
        msg_Dbg( p_demux, "found valid ASX playlist" );
        free(type);
    }
    else
    {
        free(type);
        return VLC_EGENERIC;
    }

    p_demux->pf_control = access_vaDirectoryControlHelper;
    p_demux->pf_readdir = ReadDir;
    return VLC_SUCCESS;
}
