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
struct TYPE_4__ {int /*<<< orphan*/  GSUB_Table; } ;
typedef  TYPE_1__ ScriptCache ;
typedef  int /*<<< orphan*/  SCRIPT_ANALYSIS ;
typedef  int /*<<< orphan*/  LoadedFeature ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FEATURE_GSUB_TABLE ; 
 int /*<<< orphan*/  GSUB_E_NOFEATURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static INT FUNC3(HDC hdc, SCRIPT_ANALYSIS *psa, ScriptCache* psc, WORD *glyphs, INT index, INT write_dir, INT* glyph_count, const char* feat)
{
    LoadedFeature *feature;

    feature = FUNC2(hdc, psa, psc, FEATURE_GSUB_TABLE, feat);
    if (!feature)
        return GSUB_E_NOFEATURE;

    FUNC1("applying feature %s\n",feat);
    return FUNC0(psc->GSUB_Table, feature, glyphs, index, write_dir, glyph_count);
}