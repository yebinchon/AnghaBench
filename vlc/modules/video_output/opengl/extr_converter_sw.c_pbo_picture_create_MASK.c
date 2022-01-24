#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int i_pitch; size_t i_lines; } ;
typedef  TYPE_2__ plane_t ;
struct TYPE_17__ {scalar_t__ i_planes; TYPE_2__* p; } ;
typedef  TYPE_3__ picture_t ;
struct TYPE_18__ {int* bytes; int /*<<< orphan*/  DeleteBuffers; int /*<<< orphan*/  buffers; } ;
typedef  TYPE_4__ picture_sys_t ;
struct TYPE_19__ {int /*<<< orphan*/  pf_destroy; TYPE_4__* p_sys; } ;
typedef  TYPE_5__ picture_resource_t ;
struct TYPE_20__ {unsigned int tex_count; int /*<<< orphan*/  fmt; TYPE_1__* vt; } ;
typedef  TYPE_6__ opengl_tex_converter_t ;
struct TYPE_15__ {int /*<<< orphan*/  DeleteBuffers; int /*<<< orphan*/  (* GenBuffers ) (scalar_t__,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 size_t SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_4__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  pbo_picture_destroy ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static picture_t *
FUNC8(const opengl_tex_converter_t *tc)
{
    picture_sys_t *picsys = FUNC1(1, sizeof(*picsys));
    if (FUNC7(picsys == NULL))
        return NULL;

    picture_resource_t rsc = {
        .p_sys = picsys,
        .pf_destroy = pbo_picture_destroy,
    };
    picture_t *pic = FUNC3(&tc->fmt, &rsc);
    if (pic == NULL)
    {
        FUNC2(picsys);
        return NULL;
    }

    tc->vt->GenBuffers(pic->i_planes, picsys->buffers);
    picsys->DeleteBuffers = tc->vt->DeleteBuffers;

    /* XXX: needed since picture_NewFromResource override pic planes */
    if (FUNC5(pic, &tc->fmt))
    {
        FUNC4(pic);
        return NULL;
    }

    FUNC0(pic->i_planes > 0
        && (unsigned) pic->i_planes == tc->tex_count);

    for (int i = 0; i < pic->i_planes; ++i)
    {
        const plane_t *p = &pic->p[i];

        if( p->i_pitch < 0 || p->i_lines <= 0 ||
            (size_t)p->i_pitch > SIZE_MAX/p->i_lines )
        {
            FUNC4(pic);
            return NULL;
        }
        picsys->bytes[i] = p->i_pitch * p->i_lines;
    }
    return pic;
}