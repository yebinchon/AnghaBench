#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * psz_encoding; } ;
struct TYPE_7__ {scalar_t__ i_extra; scalar_t__ i_cat; scalar_t__ i_extra_languages; TYPE_5__* p_extra_languages; TYPE_1__ subs; int /*<<< orphan*/  video; int /*<<< orphan*/ * p_extra; int /*<<< orphan*/ * psz_description; int /*<<< orphan*/ * psz_language; } ;
typedef  TYPE_2__ es_format_t ;
struct TYPE_8__ {int /*<<< orphan*/ * psz_description; int /*<<< orphan*/ * psz_language; } ;

/* Variables and functions */
 scalar_t__ SPU_ES ; 
 scalar_t__ VIDEO_ES ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC1 (scalar_t__,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC8(es_format_t *restrict dst, const es_format_t *src)
{
    int ret = VLC_SUCCESS;

    *dst = *src;

    if (src->psz_language != NULL)
    {
        dst->psz_language = FUNC5(src->psz_language);
        if (FUNC6(dst->psz_language == NULL))
            ret = VLC_ENOMEM;
    }
    if (src->psz_description != NULL)
    {
        dst->psz_description = FUNC5(src->psz_description);
        if (FUNC6(dst->psz_description == NULL))
            ret = VLC_ENOMEM;
    }

    if (src->i_extra > 0)
    {
        FUNC0(src->p_extra != NULL);
        dst->p_extra = FUNC3( src->i_extra );

        if( FUNC2(dst->p_extra != NULL) )
            FUNC4(dst->p_extra, src->p_extra, src->i_extra);
        else
        {
            dst->i_extra = 0;
            ret = VLC_ENOMEM;
        }
    }
    else
        dst->p_extra = NULL;

    if (src->i_cat == VIDEO_ES)
        ret = FUNC7( &dst->video, &src->video );

    if (src->i_cat == SPU_ES)
    {
        if (src->subs.psz_encoding != NULL)
        {
            dst->subs.psz_encoding = FUNC5(src->subs.psz_encoding);
            if (FUNC6(dst->subs.psz_encoding == NULL))
                ret = VLC_ENOMEM;
        }
    }

    if (src->i_extra_languages > 0)
    {
        FUNC0(src->p_extra_languages != NULL);
        dst->p_extra_languages = FUNC1(dst->i_extra_languages,
                                        sizeof (*dst->p_extra_languages));
        if (FUNC2(dst->p_extra_languages != NULL))
        {
            for (unsigned i = 0; i < dst->i_extra_languages; i++)
            {
                if (src->p_extra_languages[i].psz_language != NULL)
                    dst->p_extra_languages[i].psz_language = FUNC5(src->p_extra_languages[i].psz_language);
                if (src->p_extra_languages[i].psz_description != NULL)
                    dst->p_extra_languages[i].psz_description = FUNC5(src->p_extra_languages[i].psz_description);
            }
            dst->i_extra_languages = src->i_extra_languages;
        }
        else
        {
            dst->i_extra_languages = 0;
            ret = VLC_ENOMEM;
        }
    }
    return ret;
}