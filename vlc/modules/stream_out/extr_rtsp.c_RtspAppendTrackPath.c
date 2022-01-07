
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int track_id; } ;
typedef TYPE_1__ rtsp_stream_id_t ;


 int asprintf (char**,char*,char const*,char const*,int ) ;
 int strlen (char const*) ;

char *RtspAppendTrackPath( rtsp_stream_id_t *id, const char *base )
{
    const char *sep = strlen( base ) > 0 && base[strlen( base ) - 1] == '/' ?
                      "" : "/";
    char *url;

    if( asprintf( &url, "%s%strackID=%u", base, sep, id->track_id ) == -1 )
        url = ((void*)0);
    return url;
}
