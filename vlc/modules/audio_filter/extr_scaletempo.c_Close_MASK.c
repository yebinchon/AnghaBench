#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ filter_t ;
struct TYPE_5__ {struct TYPE_5__* table_window; struct TYPE_5__* buf_pre_corr; struct TYPE_5__* table_blend; struct TYPE_5__* buf_overlap; struct TYPE_5__* buf_queue; } ;
typedef  TYPE_2__ filter_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC1( vlc_object_t *p_this )
{
    filter_t *p_filter = (filter_t *)p_this;
    filter_sys_t *p_sys = p_filter->p_sys;
    FUNC0( p_sys->buf_queue );
    FUNC0( p_sys->buf_overlap );
    FUNC0( p_sys->table_blend );
    FUNC0( p_sys->buf_pre_corr );
    FUNC0( p_sys->table_window );
    FUNC0( p_sys );
}