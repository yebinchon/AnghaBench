#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ converted; int /*<<< orphan*/  fmt; int /*<<< orphan*/  rc; } ;
typedef  TYPE_1__ libvlc_picture_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4( libvlc_picture_t* pic )
{
    if ( FUNC3( &pic->rc ) == false )
        return;
    FUNC2( &pic->fmt );
    if ( pic->converted )
        FUNC0( pic->converted );
    FUNC1( pic );
}