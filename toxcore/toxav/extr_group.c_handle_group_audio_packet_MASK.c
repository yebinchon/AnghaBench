#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  sequnum ;
struct TYPE_8__ {int length; int* data; int /*<<< orphan*/  sequnum; } ;
struct TYPE_7__ {int /*<<< orphan*/  buffer; } ;
typedef  TYPE_1__ Group_Peer_AV ;
typedef  TYPE_2__ Group_Audio_Packet ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (void*,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static int FUNC6(void *object, int groupnumber, int friendgroupnumber, void *peer_object,
                                     const uint8_t *packet, uint16_t length)
{
    if (!peer_object || !object || length <= sizeof(uint16_t)) {
        return -1;
    }

    Group_Peer_AV *peer_av = peer_object;

    Group_Audio_Packet *pk = FUNC0(1, sizeof(Group_Audio_Packet) + (length - sizeof(uint16_t)));

    if (!pk) {
        return -1;
    }

    uint16_t sequnum;
    FUNC3(&sequnum, packet, sizeof(sequnum));
    pk->sequnum = FUNC4(sequnum);
    pk->length = length - sizeof(uint16_t);
    FUNC3(pk->data, packet + sizeof(uint16_t), length - sizeof(uint16_t));

    if (FUNC5(peer_av->buffer, pk) == -1) {
        FUNC2(pk);
        return -1;
    }

    while (FUNC1(object, peer_av, groupnumber, friendgroupnumber) == 0);

    return 0;
}