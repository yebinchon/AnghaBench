#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_9__ {int /*<<< orphan*/  p_buffer; int /*<<< orphan*/  i_size; scalar_t__ i_pos; } ;
struct vlc_stream_attachment_private {TYPE_3__* attachment; TYPE_1__ memory; } ;
struct TYPE_10__ {int /*<<< orphan*/  pf_control; int /*<<< orphan*/  pf_seek; int /*<<< orphan*/  pf_read; int /*<<< orphan*/ * psz_name; } ;
typedef  TYPE_2__ stream_t ;
struct TYPE_11__ {int /*<<< orphan*/  p_data; int /*<<< orphan*/  i_data; } ;
typedef  TYPE_3__ input_attachment_t ;

/* Variables and functions */
 int /*<<< orphan*/  Control ; 
 int /*<<< orphan*/  Read ; 
 int /*<<< orphan*/  Seek ; 
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/  stream_AttachmentDelete ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 
 struct vlc_stream_attachment_private* FUNC4 (TYPE_2__*) ; 

stream_t *FUNC5(vlc_object_t *p_this,
                                   input_attachment_t *attachment)
{
    struct vlc_stream_attachment_private *p_sys;
    stream_t *s = FUNC3(p_this, stream_AttachmentDelete,
                                       sizeof (*p_sys), "stream");
    if (FUNC2(s == NULL))
        return NULL;

    s->psz_name = FUNC0("attachment");
    if (FUNC2(s->psz_name == NULL))
    {
        FUNC1(s);
        return NULL;
    }

    p_sys = FUNC4(s);
    p_sys->memory.i_pos = 0;
    p_sys->memory.i_size = attachment->i_data;
    p_sys->memory.p_buffer = attachment->p_data;
    p_sys->attachment = attachment;

    s->pf_read    = Read;
    s->pf_seek    = Seek;
    s->pf_control = Control;

    return s;
}