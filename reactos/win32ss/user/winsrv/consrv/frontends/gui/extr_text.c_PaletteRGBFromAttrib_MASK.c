#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_9__ {int /*<<< orphan*/  peBlue; int /*<<< orphan*/  peGreen; int /*<<< orphan*/  peRed; } ;
struct TYPE_8__ {TYPE_1__* ActiveBuffer; } ;
struct TYPE_7__ {int /*<<< orphan*/ * PaletteHandle; } ;
typedef  TYPE_2__* PCONSRV_CONSOLE ;
typedef  TYPE_3__ PALETTEENTRY ;
typedef  int /*<<< orphan*/ * HPALETTE ;
typedef  int /*<<< orphan*/  COLORREF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static COLORREF
FUNC3(PCONSRV_CONSOLE Console, WORD Attribute)
{
    HPALETTE hPalette = Console->ActiveBuffer->PaletteHandle;
    PALETTEENTRY pe;

    if (hPalette == NULL) return FUNC2(Console, Attribute);

    FUNC0(hPalette, Attribute, 1, &pe);
    return FUNC1(pe.peRed, pe.peGreen, pe.peBlue);
}