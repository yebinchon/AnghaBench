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
struct TYPE_5__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSIRECORD ;
typedef  int /*<<< orphan*/  MSIPACKAGE ;

/* Variables and functions */
 int /*<<< orphan*/  INSTALLMESSAGE_PROGRESS ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5( MSIPACKAGE *package, int a, int b, int c, int d )
{
    MSIRECORD *row;

    row = FUNC0( 4 );
    FUNC2( row, 1, a );
    FUNC2( row, 2, b );
    FUNC2( row, 3, c );
    FUNC2( row, 4, d );
    FUNC1( package, INSTALLMESSAGE_PROGRESS, row );
    FUNC4( &row->hdr );

    FUNC3( NULL );
}