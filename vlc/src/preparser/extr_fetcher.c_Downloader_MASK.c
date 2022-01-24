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
struct vlc_memstream {char* ptr; int /*<<< orphan*/  length; } ;
struct fetcher_request {int /*<<< orphan*/  item; } ;
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_5__ {int /*<<< orphan*/  owner; } ;
typedef  TYPE_1__ input_fetcher_t ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct fetcher_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 () ; 
 scalar_t__ FUNC11 (struct vlc_memstream*) ; 
 int /*<<< orphan*/  FUNC12 (struct vlc_memstream*) ; 
 scalar_t__ FUNC13 (struct vlc_memstream*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int FUNC16 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void FUNC17( input_fetcher_t* fetcher,
    struct fetcher_request* req )
{
    FUNC3( fetcher, req->item );

    char *psz_arturl = FUNC6( req->item );
    if( !psz_arturl )
        goto error;

    if( !FUNC8( psz_arturl, "file://", 7 ) ||
        !FUNC8( psz_arturl, "attachment://", 13 ) )
        goto out; /* no fetch required */

    stream_t* source = FUNC15( fetcher->owner, psz_arturl );

    if( !source )
        goto error;

    struct vlc_memstream output_stream;
    FUNC12( &output_stream );

    for( ;; )
    {
        char buffer[2048];

        int read = FUNC16( source, buffer, sizeof( buffer ) );
        if( read <= 0 )
            break;

        if( (int)FUNC13( &output_stream, buffer, read ) < read )
            break;
    }

    FUNC14( source );

    if( FUNC11( &output_stream ) )
        goto error;

    if( FUNC10() )
    {
        FUNC4( output_stream.ptr );
        goto error;
    }

    FUNC5( fetcher->owner, req->item, output_stream.ptr,
                   output_stream.length, NULL );

    FUNC4( output_stream.ptr );
    FUNC0( fetcher, req->item, true );

out:
    if( psz_arturl )
    {
        FUNC9( fetcher->owner, "item-change", req->item );
        FUNC7( req->item, true );
    }

    FUNC4( psz_arturl );
    FUNC2(req, psz_arturl != NULL);
    return;

error:
    FUNC1( psz_arturl );
    goto out;
}