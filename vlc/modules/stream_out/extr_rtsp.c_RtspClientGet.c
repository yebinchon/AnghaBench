
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_5__ {int sessionc; TYPE_2__** sessionv; } ;
typedef TYPE_1__ rtsp_stream_t ;
struct TYPE_6__ {scalar_t__ id; } ;
typedef TYPE_2__ rtsp_session_t ;


 scalar_t__ errno ;
 scalar_t__ strtoull (char const*,char**,int) ;

__attribute__((used)) static
rtsp_session_t *RtspClientGet( rtsp_stream_t *rtsp, const char *name )
{
    char *end;
    uint64_t id;
    int i;

    if( name == ((void*)0) )
        return ((void*)0);

    errno = 0;
    id = strtoull( name, &end, 0x10 );
    if( errno || *end )
        return ((void*)0);


    for( i = 0; i < rtsp->sessionc; i++ )
    {
        if( rtsp->sessionv[i]->id == id )
            return rtsp->sessionv[i];
    }
    return ((void*)0);
}
