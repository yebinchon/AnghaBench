#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ ULONG ;
struct TYPE_3__ {int /*<<< orphan*/ * pwcsName; } ;
typedef  TYPE_1__ STATSTG ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  int /*<<< orphan*/  IEnumSTATSTG ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC8( IStorage *stg )
{
    IEnumSTATSTG *stgenum = NULL;
    HRESULT r;
    STATSTG stat;
    ULONG n, count;
    WCHAR name[0x40];

    r = FUNC4( stg, 0, NULL, 0, &stgenum );
    if( FUNC1( r ) )
        return;

    n = 0;
    while( 1 )
    {
        count = 0;
        r = FUNC2( stgenum, 1, &stat, &count );
        if( FUNC1( r ) || !count )
            break;
        FUNC7( stat.pwcsName, name );
        FUNC5("stream %2d -> %s %s\n", n,
              FUNC6(stat.pwcsName), FUNC6(name) );
        FUNC0( stat.pwcsName );
        n++;
    }

    FUNC3( stgenum );
}