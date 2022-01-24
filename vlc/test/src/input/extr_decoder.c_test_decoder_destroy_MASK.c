#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct decoder_owner {int /*<<< orphan*/ * packetizer; } ;
typedef  int /*<<< orphan*/  decoder_t ;

/* Variables and functions */
 struct decoder_owner* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(decoder_t *decoder)
{
    struct decoder_owner *owner = FUNC0(decoder);

    FUNC1(owner->packetizer);
    FUNC1(decoder);
}