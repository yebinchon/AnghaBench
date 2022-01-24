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
struct TYPE_4__ {int i_width; int i_bits_per_pixel; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ fmt; } ;
typedef  TYPE_2__ libvlc_picture_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ libvlc_picture_Argb ; 

unsigned int FUNC1( const libvlc_picture_t *pic )
{
    FUNC0( pic->type == libvlc_picture_Argb );
    return pic->fmt.i_width * pic->fmt.i_bits_per_pixel / 8;
}