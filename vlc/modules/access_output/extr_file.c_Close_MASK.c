#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_3__ {int* p_sys; } ;
typedef  TYPE_1__ sout_access_out_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2( vlc_object_t * p_this )
{
    sout_access_out_t *p_access = (sout_access_out_t*)p_this;
    int *fdp = p_access->p_sys, fd = *fdp;

    FUNC1(fd);
    FUNC0( p_access, "file access output closed" );
}