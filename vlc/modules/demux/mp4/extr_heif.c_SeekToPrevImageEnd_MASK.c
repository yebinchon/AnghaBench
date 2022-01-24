#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * p_infe; } ;
struct heif_private_t {int i_pcr; int i_image_duration; scalar_t__ i_end_display_time; TYPE_1__ current; int /*<<< orphan*/  p_root; } ;
struct TYPE_4__ {int i_flags; } ;
typedef  int /*<<< orphan*/  MP4_Box_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATOM_infe ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3( struct heif_private_t *p_sys, int i_picture )
{
    int i = 0;
    MP4_Box_t *p_infe = NULL;
    while( i < i_picture &&
          (p_infe = FUNC2( p_sys->p_root, ATOM_infe, "meta/iinf/infe", p_infe )) )
    {
        if( (FUNC0(p_infe)->i_flags & 0x01) != 0x00 ||
                !FUNC1( p_infe, p_sys->p_root ) )
            continue;
        i++;
    }
    p_sys->current.p_infe = p_infe;
    p_sys->i_end_display_time = 0;
    p_sys->i_pcr = i * p_sys->i_image_duration;
}