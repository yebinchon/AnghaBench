
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int netconn; TYPE_2__* connect; } ;
typedef TYPE_1__ request_t ;
struct TYPE_7__ {int hostport; int hostname; } ;
typedef TYPE_2__ connect_t ;
typedef char WCHAR ;
typedef scalar_t__ LPWSTR ;
typedef scalar_t__ LPSTR ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ build_header_request_string (TYPE_1__*,char const*,scalar_t__,int ) ;
 scalar_t__ heap_alloc (int) ;
 int heap_free (scalar_t__) ;
 int http1_1 ;
 int netconn_send (int ,scalar_t__,int,int*) ;
 int read_reply (TYPE_1__*) ;
 int sprintfW (scalar_t__,char const*,int ,int ) ;
 scalar_t__ strdupWA (scalar_t__) ;
 int strlen (scalar_t__) ;
 int strlenW (int ) ;

__attribute__((used)) static BOOL secure_proxy_connect( request_t *request )
{
    static const WCHAR verbConnect[] = {'C','O','N','N','E','C','T',0};
    static const WCHAR fmt[] = {'%','s',':','%','u',0};
    BOOL ret = FALSE;
    LPWSTR path;
    connect_t *connect = request->connect;

    path = heap_alloc( (strlenW( connect->hostname ) + 13) * sizeof(WCHAR) );
    if (path)
    {
        LPWSTR requestString;

        sprintfW( path, fmt, connect->hostname, connect->hostport );
        requestString = build_header_request_string( request, verbConnect,
            path, http1_1 );
        heap_free( path );
        if (requestString)
        {
            LPSTR req_ascii = strdupWA( requestString );

            heap_free( requestString );
            if (req_ascii)
            {
                int len = strlen( req_ascii ), bytes_sent;

                ret = netconn_send( request->netconn, req_ascii, len, &bytes_sent );
                heap_free( req_ascii );
                if (ret)
                    ret = read_reply( request );
            }
        }
    }
    return ret;
}
