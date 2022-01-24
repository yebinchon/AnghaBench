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
struct TYPE_2__ {int /*<<< orphan*/  buffer; scalar_t__ audio_decoder; } ;
typedef  TYPE_1__ Group_Peer_AV ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *object, int groupnumber, int friendgroupnumber, void *peer_object)
{
    Group_Peer_AV *peer_av = peer_object;

    if (!peer_av)
        return;

    if (peer_av->audio_decoder)
        FUNC1(peer_av->audio_decoder);

    FUNC2(peer_av->buffer);
    FUNC0(peer_object);
}