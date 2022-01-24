#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  spu_t ;
struct TYPE_10__ {int i_width; int i_visible_width; int i_height; int i_visible_height; } ;
struct TYPE_12__ {TYPE_2__ video; } ;
struct TYPE_9__ {int /*<<< orphan*/ * sys; } ;
struct TYPE_11__ {int /*<<< orphan*/  p_module; int /*<<< orphan*/  pf_get_attachments; TYPE_7__ fmt_out; TYPE_7__ fmt_in; TYPE_1__ owner; } ;
typedef  TYPE_3__ filter_t ;

/* Variables and functions */
 int /*<<< orphan*/  VIDEO_ES ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,char*) ; 
 int /*<<< orphan*/  spu_get_attachments ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static filter_t *FUNC4(spu_t *spu)
{
    filter_t *text = FUNC2(spu, sizeof(*text), "spu text");
    if (!text)
        return NULL;

    text->owner.sys = spu;

    FUNC0(&text->fmt_in, VIDEO_ES, 0);

    FUNC0(&text->fmt_out, VIDEO_ES, 0);
    text->fmt_out.video.i_width          =
    text->fmt_out.video.i_visible_width  = 32;
    text->fmt_out.video.i_height         =
    text->fmt_out.video.i_visible_height = 32;

    text->pf_get_attachments = spu_get_attachments;

    text->p_module = FUNC1(text, "text renderer", "text-renderer");
    if (!text->p_module)
    {
        FUNC3(text);
        return NULL;
    }

    return text;
}