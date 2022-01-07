
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int read_pos; int read_size; int read_section; int * read_buf; } ;
typedef TYPE_1__ http_request_t ;
typedef char* LPSTR ;
typedef int DWORD ;
typedef int BYTE ;


 int ERROR_SUCCESS ;
 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int TRACE (char*,...) ;
 int WARN (char*,int) ;
 int debugstr_a (char*) ;
 int * memchr (int *,char,int) ;
 int memcpy (char*,int *,int) ;
 int min (int,int) ;
 int read_more_data (TYPE_1__*,int) ;
 int remove_data (TYPE_1__*,int) ;

__attribute__((used)) static DWORD read_line( http_request_t *req, LPSTR buffer, DWORD *len )
{
    int count, bytes_read, pos = 0;
    DWORD res;

    EnterCriticalSection( &req->read_section );
    for (;;)
    {
        BYTE *eol = memchr( req->read_buf + req->read_pos, '\n', req->read_size );

        if (eol)
        {
            count = eol - (req->read_buf + req->read_pos);
            bytes_read = count + 1;
        }
        else count = bytes_read = req->read_size;

        count = min( count, *len - pos );
        memcpy( buffer + pos, req->read_buf + req->read_pos, count );
        pos += count;
        remove_data( req, bytes_read );
        if (eol) break;

        if ((res = read_more_data( req, -1 )))
        {
            WARN( "read failed %u\n", res );
            LeaveCriticalSection( &req->read_section );
            return res;
        }
        if (!req->read_size)
        {
            *len = 0;
            TRACE( "returning empty string\n" );
            LeaveCriticalSection( &req->read_section );
            return ERROR_SUCCESS;
        }
    }
    LeaveCriticalSection( &req->read_section );

    if (pos < *len)
    {
        if (pos && buffer[pos - 1] == '\r') pos--;
        *len = pos + 1;
    }
    buffer[*len - 1] = 0;
    TRACE( "returning %s\n", debugstr_a(buffer));
    return ERROR_SUCCESS;
}
