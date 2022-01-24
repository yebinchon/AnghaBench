#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int WORD ;
struct TYPE_8__ {int tmPitchAndFamily; } ;
struct TYPE_6__ {int /*<<< orphan*/  bProportion; int /*<<< orphan*/  bWeight; int /*<<< orphan*/  bSerifStyle; int /*<<< orphan*/  bFamilyType; } ;
struct TYPE_7__ {TYPE_1__ panose; } ;
typedef  TYPE_2__ TT_OS2_V4 ;
typedef  TYPE_3__ TEXTMETRICA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ LANG_ENGLISH ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char const*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(const TEXTMETRICA *tmA, const TT_OS2_V4 *os2, WORD family, const char *name)
{
    FUNC3((tmA->tmPitchAndFamily & 0xf0) == family ||
       FUNC2(FUNC1(FUNC0()) != LANG_ENGLISH),
       "%s: expected family %02x got %02x. panose %d-%d-%d-%d-...\n",
       name, family, tmA->tmPitchAndFamily, os2->panose.bFamilyType, os2->panose.bSerifStyle,
       os2->panose.bWeight, os2->panose.bProportion);
}