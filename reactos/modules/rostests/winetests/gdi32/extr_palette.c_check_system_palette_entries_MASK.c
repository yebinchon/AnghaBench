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
typedef  int /*<<< orphan*/  entries ;
typedef  int /*<<< orphan*/  defpal ;
struct TYPE_5__ {scalar_t__ peRed; scalar_t__ peGreen; scalar_t__ peBlue; int /*<<< orphan*/  peFlags; } ;
typedef  TYPE_1__ PALETTEENTRY ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_PALETTE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int,...) ; 

__attribute__((used)) static void FUNC5(HDC hdc)
{
    PALETTEENTRY entries[256];
    PALETTEENTRY defpal[20];
    int i, count;

    FUNC3( defpal, 0xaa, sizeof(defpal) );
    count = FUNC0( FUNC1(DEFAULT_PALETTE), 0, 20, defpal );
    FUNC4( count == 20, "wrong size %u\n", count );

    FUNC3( entries, 0x55, sizeof(entries) );
    count = FUNC2( hdc, 0, 256, entries );
    FUNC4( count == 0, "wrong size %u\n", count);
    for (i = 0; i < 10; i++)
    {
        FUNC4( entries[i].peRed   == defpal[i].peRed &&
            entries[i].peGreen == defpal[i].peGreen &&
            entries[i].peBlue  == defpal[i].peBlue &&
            !entries[i].peFlags,
            "%u: wrong color %02x,%02x,%02x,%02x instead of %02x,%02x,%02x\n", i,
            entries[i].peRed, entries[i].peGreen, entries[i].peBlue, entries[i].peFlags,
            defpal[i].peRed, defpal[i].peGreen, defpal[i].peBlue );
    }
    for (i = 10; i < 246; ++i)
    {
        FUNC4( !entries[i].peRed   &&
            !entries[i].peGreen &&
            !entries[i].peBlue  &&
            !entries[i].peFlags,
            "%u: wrong color %02x,%02x,%02x,%02x instead of 0,0,0\n", i,
            entries[i].peRed, entries[i].peGreen, entries[i].peBlue, entries[i].peFlags);
    }
    for (i = 246; i < 256; i++)
    {
        int idx = i - 246 + 10;
        FUNC4( entries[i].peRed   == defpal[idx].peRed &&
            entries[i].peGreen == defpal[idx].peGreen &&
            entries[i].peBlue  == defpal[idx].peBlue &&
            !entries[i].peFlags,
            "%u: wrong color %02x,%02x,%02x,%02x instead of %02x,%02x,%02x\n", i,
            entries[i].peRed, entries[i].peGreen, entries[i].peBlue, entries[i].peFlags,
            defpal[idx].peRed, defpal[idx].peGreen, defpal[idx].peBlue );
    }

    FUNC3( entries, 0x55, sizeof(entries) );
    count = FUNC2( hdc, 0, 10, entries );
    FUNC4( count == 0, "wrong size %u\n", count);
    for (i = 0; i < 10; i++)
    {
        FUNC4( entries[i].peRed   == defpal[i].peRed &&
            entries[i].peGreen == defpal[i].peGreen &&
            entries[i].peBlue  == defpal[i].peBlue &&
            !entries[i].peFlags,
            "%u: wrong color %02x,%02x,%02x,%02x instead of %02x,%02x,%02x\n", i,
            entries[i].peRed, entries[i].peGreen, entries[i].peBlue, entries[i].peFlags,
            defpal[i].peRed, defpal[i].peGreen, defpal[i].peBlue );
    }

    FUNC3( entries, 0x55, sizeof(entries) );
    count = FUNC2( hdc, 10, 246, entries );
    FUNC4( count == 0, "wrong size %u\n", count);
    for (i = 0; i < 236; ++i)
    {
        FUNC4( !entries[i].peRed   &&
            !entries[i].peGreen &&
            !entries[i].peBlue  &&
            !entries[i].peFlags,
            "%u: wrong color %02x,%02x,%02x,%02x instead of 0,0,0\n", i,
            entries[i].peRed, entries[i].peGreen, entries[i].peBlue, entries[i].peFlags);
    }
    for (i = 236; i < 246; i++)
    {
        int idx = i - 236 + 10;
        FUNC4( entries[i].peRed   == defpal[idx].peRed &&
            entries[i].peGreen == defpal[idx].peGreen &&
            entries[i].peBlue  == defpal[idx].peBlue &&
            !entries[i].peFlags,
            "%u: wrong color %02x,%02x,%02x,%02x instead of %02x,%02x,%02x\n", i,
            entries[i].peRed, entries[i].peGreen, entries[i].peBlue, entries[i].peFlags,
            defpal[idx].peRed, defpal[idx].peGreen, defpal[idx].peBlue );
    }

    FUNC3( entries, 0x55, sizeof(entries) );
    count = FUNC2( hdc, 246, 10, entries );
    FUNC4( count == 0, "wrong size %u\n", count);
    for (i = 0; i < 10; i++)
    {
        int idx = i + 10;
        FUNC4( entries[i].peRed   == defpal[idx].peRed &&
            entries[i].peGreen == defpal[idx].peGreen &&
            entries[i].peBlue  == defpal[idx].peBlue &&
            !entries[i].peFlags,
            "%u: wrong color %02x,%02x,%02x,%02x instead of %02x,%02x,%02x\n", i,
            entries[i].peRed, entries[i].peGreen, entries[i].peBlue, entries[i].peFlags,
            defpal[idx].peRed, defpal[idx].peGreen, defpal[idx].peBlue );
    }
}