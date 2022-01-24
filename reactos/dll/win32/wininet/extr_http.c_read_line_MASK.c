#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int read_pos; int read_size; int /*<<< orphan*/  read_section; int /*<<< orphan*/ * read_buf; } ;
typedef  TYPE_1__ http_request_t ;
typedef  char* LPSTR ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int,int) ; 
 int FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 

__attribute__((used)) static DWORD FUNC10( http_request_t *req, LPSTR buffer, DWORD *len )
{
    int count, bytes_read, pos = 0;
    DWORD res;

    FUNC0( &req->read_section );
    for (;;)
    {
        BYTE *eol = FUNC5( req->read_buf + req->read_pos, '\n', req->read_size );

        if (eol)
        {
            count = eol - (req->read_buf + req->read_pos);
            bytes_read = count + 1;
        }
        else count = bytes_read = req->read_size;

        count = FUNC7( count, *len - pos );
        FUNC6( buffer + pos, req->read_buf + req->read_pos, count );
        pos += count;
        FUNC9( req, bytes_read );
        if (eol) break;

        if ((res = FUNC8( req, -1 )))
        {
            FUNC3( "read failed %u\n", res );
            FUNC1( &req->read_section );
            return res;
        }
        if (!req->read_size)
        {
            *len = 0;
            FUNC2( "returning empty string\n" );
            FUNC1( &req->read_section );
            return ERROR_SUCCESS;
        }
    }
    FUNC1( &req->read_section );

    if (pos < *len)
    {
        if (pos && buffer[pos - 1] == '\r') pos--;
        *len = pos + 1;
    }
    buffer[*len - 1] = 0;
    FUNC2( "returning %s\n", FUNC4(buffer));
    return ERROR_SUCCESS;
}