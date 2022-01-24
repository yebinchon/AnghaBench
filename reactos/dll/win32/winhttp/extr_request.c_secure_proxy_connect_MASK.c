#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  netconn; TYPE_2__* connect; } ;
typedef  TYPE_1__ request_t ;
struct TYPE_7__ {int /*<<< orphan*/  hostport; int /*<<< orphan*/  hostname; } ;
typedef  TYPE_2__ connect_t ;
typedef  char WCHAR ;
typedef  scalar_t__ LPWSTR ;
typedef  scalar_t__ LPSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (TYPE_1__*,char const*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  http1_1 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC9( request_t *request )
{
    static const WCHAR verbConnect[] = {'C','O','N','N','E','C','T',0};
    static const WCHAR fmt[] = {'%','s',':','%','u',0};
    BOOL ret = FALSE;
    LPWSTR path;
    connect_t *connect = request->connect;

    path = FUNC1( (FUNC8( connect->hostname ) + 13) * sizeof(WCHAR) );
    if (path)
    {
        LPWSTR requestString;

        FUNC5( path, fmt, connect->hostname, connect->hostport );
        requestString = FUNC0( request, verbConnect,
            path, http1_1 );
        FUNC2( path );
        if (requestString)
        {
            LPSTR req_ascii = FUNC6( requestString );

            FUNC2( requestString );
            if (req_ascii)
            {
                int len = FUNC7( req_ascii ), bytes_sent;

                ret = FUNC3( request->netconn, req_ascii, len, &bytes_sent );
                FUNC2( req_ascii );
                if (ret)
                    ret = FUNC4( request );
            }
        }
    }
    return ret;
}