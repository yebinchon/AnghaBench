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
struct TYPE_6__ {TYPE_3__* psz_encoding; } ;
struct TYPE_7__ {scalar_t__ i_extra; scalar_t__ i_cat; unsigned int i_extra_languages; TYPE_3__* p_extra_languages; TYPE_1__ subs; int /*<<< orphan*/  video; TYPE_3__* p_extra; TYPE_3__* psz_description; TYPE_3__* psz_language; } ;
typedef  TYPE_2__ es_format_t ;
struct TYPE_8__ {struct TYPE_8__* psz_description; struct TYPE_8__* psz_language; } ;

/* Variables and functions */
 scalar_t__ SPU_ES ; 
 int /*<<< orphan*/  UNKNOWN_ES ; 
 scalar_t__ VIDEO_ES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(es_format_t *fmt)
{
    FUNC2(fmt->psz_language);
    FUNC2(fmt->psz_description);
    FUNC0(fmt->i_extra == 0 || fmt->p_extra != NULL);
    FUNC2(fmt->p_extra);

    if (fmt->i_cat == VIDEO_ES)
        FUNC3( &fmt->video );
    if (fmt->i_cat == SPU_ES)
        FUNC2(fmt->subs.psz_encoding);

    for (unsigned i = 0; i < fmt->i_extra_languages; i++)
    {
        FUNC2(fmt->p_extra_languages[i].psz_language);
        FUNC2(fmt->p_extra_languages[i].psz_description);
    }
    FUNC2(fmt->p_extra_languages);

    /* es_format_Clean can be called multiple times */
    FUNC1(fmt, UNKNOWN_ES, 0);
}