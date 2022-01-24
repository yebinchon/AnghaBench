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
struct TYPE_5__ {scalar_t__ userLang; scalar_t__ GPOS_Table; scalar_t__ GSUB_Table; } ;
typedef  TYPE_1__ ScriptCache ;
typedef  int /*<<< orphan*/  SCRIPT_ANALYSIS ;
typedef  int OPENTYPE_TAG ;
typedef  int /*<<< orphan*/  LoadedFeature ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 (char const,char const,char const,char const) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int,int /*<<< orphan*/ ,int,char,int,int*,int*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int) ; 

__attribute__((used)) static LoadedFeature* FUNC5(HDC hdc, SCRIPT_ANALYSIS *psa, ScriptCache *psc, char tableType, const char* feat)
{
    LoadedFeature *feature = NULL;

    if (psc->GSUB_Table || psc->GPOS_Table)
    {
        int attempt = 2;
        OPENTYPE_TAG tags;
        OPENTYPE_TAG language;
        OPENTYPE_TAG script = 0x00000000;
        int cTags;

        do
        {
            script = FUNC4(hdc,psa,psc,(attempt==2));
            if (psc->userLang != 0)
                language = psc->userLang;
            else
                language = FUNC0('d','f','l','t');
            attempt--;

            FUNC1(psc, script, language, FALSE, FUNC0(feat[0],feat[1],feat[2],feat[3]), tableType, 1, &tags, &cTags, &feature);

        } while(attempt && !feature);

        /* try in the default (latin) table */
        if (!feature)
        {
            if (!script)
                script = FUNC0('l','a','t','n');
            FUNC1(psc, script, FUNC0('d','f','l','t'), FALSE, FUNC0(feat[0],feat[1],feat[2],feat[3]), tableType, 1, &tags, &cTags, &feature);
        }
    }

    FUNC2("Feature %s located at %p\n",FUNC3(feat,4),feature);
    return feature;
}