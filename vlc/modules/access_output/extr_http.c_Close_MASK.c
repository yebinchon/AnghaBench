#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ sout_access_out_t ;
struct TYPE_6__ {struct TYPE_6__* p_header; int /*<<< orphan*/  p_httpd_host; int /*<<< orphan*/  p_httpd_stream; } ;
typedef  TYPE_2__ sout_access_out_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 

__attribute__((used)) static void FUNC4( vlc_object_t * p_this )
{
    sout_access_out_t       *p_access = (sout_access_out_t*)p_this;
    sout_access_out_sys_t   *p_sys = p_access->p_sys;

    FUNC2( p_sys->p_httpd_stream );
    FUNC1( p_sys->p_httpd_host );

    FUNC0( p_sys->p_header );

    FUNC3( p_access, "Close" );

    FUNC0( p_sys );
}