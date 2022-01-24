#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct decoder_owner {TYPE_1__* p_image; } ;
typedef  int /*<<< orphan*/  picture_t ;
typedef  int /*<<< orphan*/  decoder_t ;
struct TYPE_2__ {int /*<<< orphan*/  outfifo; } ;

/* Variables and functions */
 struct decoder_owner* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2( decoder_t *p_dec, picture_t *p_pic )
{
    struct decoder_owner *p_owner = FUNC0( p_dec );
    FUNC1( p_owner->p_image->outfifo, p_pic );
}