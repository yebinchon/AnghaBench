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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_7__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct TYPE_8__ {unsigned int i_title; int i_attachments; int /*<<< orphan*/  psz_bd_path; int /*<<< orphan*/  read_block_lock; TYPE_1__ bdj; int /*<<< orphan*/  pl_info_lock; int /*<<< orphan*/  events_delayed; int /*<<< orphan*/ * attachments; int /*<<< orphan*/ * pp_title; scalar_t__ p_tf_out; int /*<<< orphan*/ * p_out; scalar_t__ p_parser; scalar_t__ bluray; } ;
typedef  TYPE_3__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_OVERLAY ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(vlc_object_t *object)
{
    demux_t *p_demux = (demux_t*)object;
    demux_sys_t *p_sys = p_demux->p_sys;

    FUNC6(p_sys, NULL);

    /*
     * Close libbluray first.
     * This will close all the overlays before we release p_vout
     * bd_close(NULL) can crash
     */
    if (p_sys->bluray) {
        FUNC2(p_sys->bluray);
    }

    FUNC12(&p_sys->bdj.lock);
    for(int i = 0; i < MAX_OVERLAY; i++)
        FUNC3(p_demux, i);
    FUNC13(&p_sys->bdj.lock);

    if (p_sys->p_parser)
        FUNC8(p_sys->p_parser);

    if (p_sys->p_out != NULL)
        FUNC4(p_sys->p_out);
    if(p_sys->p_tf_out)
        FUNC7(p_sys->p_tf_out);

    /* Titles */
    for (unsigned int i = 0; i < p_sys->i_title; i++)
        FUNC10(p_sys->pp_title[i]);
    FUNC1(p_sys->i_title, p_sys->pp_title);

    for (int i = 0; i < p_sys->i_attachments; i++)
      FUNC9(p_sys->attachments[i]);
    FUNC1(p_sys->i_attachments, p_sys->attachments);

    FUNC0(p_sys->events_delayed);

    FUNC11(&p_sys->pl_info_lock);
    FUNC11(&p_sys->bdj.lock);
    FUNC11(&p_sys->read_block_lock);

    FUNC5(p_sys->psz_bd_path);
}