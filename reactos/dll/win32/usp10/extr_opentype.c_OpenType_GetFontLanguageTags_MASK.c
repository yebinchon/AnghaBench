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
struct TYPE_7__ {scalar_t__ tag; scalar_t__* table; } ;
struct TYPE_8__ {int language_count; TYPE_2__ default_language; TYPE_1__* languages; } ;
struct TYPE_6__ {scalar_t__ tag; } ;
typedef  int /*<<< orphan*/  ScriptCache ;
typedef  scalar_t__ OPENTYPE_TAG ;
typedef  TYPE_3__ LoadedScript ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 size_t USP10_LANGUAGE_TABLE_GSUB ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 

HRESULT FUNC4(ScriptCache *psc, OPENTYPE_TAG script_tag, OPENTYPE_TAG searchingFor, int cMaxTags, OPENTYPE_TAG *pLanguageTags, int *pcTags)
{
    int i;
    HRESULT rc = S_OK;
    LoadedScript *script = NULL;

    FUNC2(psc);
    if (!(script = FUNC3(psc, script_tag)))
        return E_INVALIDARG;

    FUNC1(script);

    if (!searchingFor && cMaxTags < script->language_count)
        rc = E_OUTOFMEMORY;
    else if (searchingFor)
        rc = E_INVALIDARG;

    *pcTags = script->language_count;

    for (i = 0; i < script->language_count; i++)
    {
        if (i < cMaxTags)
            pLanguageTags[i] = script->languages[i].tag;

        if (searchingFor)
        {
            if (searchingFor == script->languages[i].tag)
            {
                pLanguageTags[0] = script->languages[i].tag;
                *pcTags = 1;
                rc = S_OK;
                break;
            }
        }
    }

    if (script->default_language.table[USP10_LANGUAGE_TABLE_GSUB])
    {
        if (i < cMaxTags)
            pLanguageTags[i] = script->default_language.tag;

        if (searchingFor  && FUNC0(rc))
        {
            pLanguageTags[0] = script->default_language.tag;
        }
        i++;
        *pcTags = (*pcTags) + 1;
    }

    return rc;
}