#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_4__ {int /*<<< orphan*/  member_7; int /*<<< orphan*/  member_6; int /*<<< orphan*/  member_5; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  POINT ;
typedef  int INT ;
typedef  TYPE_1__ GPOS_ValueRecord ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (void const*,TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4( const void *pos_table, WORD val_fmt1, WORD val_fmt2, const WORD *pair,
                              INT ppem, POINT *adjust, POINT *advance )
{
    GPOS_ValueRecord val_rec1 = {0,0,0,0,0,0,0,0};
    GPOS_ValueRecord val_rec2 = {0,0,0,0,0,0,0,0};
    INT size;

    size = FUNC0( val_fmt1, pair, &val_rec1 );
    FUNC0( val_fmt2, pair + size, &val_rec2 );

    if (val_fmt1)
    {
        FUNC1( pos_table, &val_rec1, val_fmt1, ppem, adjust, advance );
        FUNC2( "Glyph 1 resulting cumulative offset is %s design units\n", FUNC3(&adjust[0]) );
        FUNC2( "Glyph 1 resulting cumulative advance is %s design units\n", FUNC3(&advance[0]) );
    }
    if (val_fmt2)
    {
        FUNC1( pos_table, &val_rec2, val_fmt2, ppem, adjust + 1, advance + 1 );
        FUNC2( "Glyph 2 resulting cumulative offset is %s design units\n", FUNC3(&adjust[1]) );
        FUNC2( "Glyph 2 resulting cumulative advance is %s design units\n", FUNC3(&advance[1]) );
    }
}