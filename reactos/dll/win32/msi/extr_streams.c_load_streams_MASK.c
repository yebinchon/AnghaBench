#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_9__ {int /*<<< orphan*/  num_streams; int /*<<< orphan*/  storage; } ;
struct TYPE_8__ {scalar_t__ type; int* pwcsName; } ;
typedef  TYPE_1__ STATSTG ;
typedef  TYPE_2__ MSIDATABASE ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IEnumSTATSTG ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_FUNCTION_FAILED ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  MAX_STREAM_NAME_LEN ; 
 scalar_t__ STGTY_STREAM ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int*,int /*<<< orphan*/ **) ; 

__attribute__((used)) static UINT FUNC12( MSIDATABASE *db )
{
    WCHAR decoded[MAX_STREAM_NAME_LEN + 1];
    IEnumSTATSTG *stgenum;
    STATSTG stat;
    HRESULT hr;
    UINT count, r = ERROR_SUCCESS;
    IStream *stream;

    hr = FUNC5( db->storage, 0, NULL, 0, &stgenum );
    if (FUNC2( hr ))
        return ERROR_FUNCTION_FAILED;

    for (;;)
    {
        count = 0;
        hr = FUNC3( stgenum, 1, &stat, &count );
        if (FUNC2( hr ) || !count)
            break;

        /* table streams are not in the _Streams table */
        if (stat.type != STGTY_STREAM || *stat.pwcsName == 0x4840)
        {
            FUNC0( stat.pwcsName );
            continue;
        }
        FUNC9( stat.pwcsName, decoded );
        if (FUNC10( db, decoded ))
        {
            FUNC0( stat.pwcsName );
            continue;
        }
        FUNC6("found new stream %s\n", FUNC8( decoded ));

        hr = FUNC11( db, stat.pwcsName, &stream );
        FUNC0( stat.pwcsName );
        if (FUNC2( hr ))
        {
            FUNC1("unable to open stream %08x\n", hr);
            r = ERROR_FUNCTION_FAILED;
            break;
        }

        r = FUNC7( db, decoded, stream );
        if (r != ERROR_SUCCESS)
            break;
    }

    FUNC6("loaded %u streams\n", db->num_streams);
    FUNC4( stgenum );
    return r;
}