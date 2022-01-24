#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  unsigned int uint16_t ;
typedef  int /*<<< orphan*/  peer_num ;
typedef  int /*<<< orphan*/  packet ;
struct TYPE_9__ {int /*<<< orphan*/  fr_c; } ;
struct TYPE_8__ {unsigned int numpeers; int title_len; unsigned int* title; TYPE_1__* group; } ;
struct TYPE_7__ {int nick_len; unsigned int* real_pk; unsigned int* temp_pk; unsigned int* nick; int /*<<< orphan*/  peer_number; } ;
typedef  int /*<<< orphan*/  Packet ;
typedef  TYPE_2__ Group_c ;
typedef  TYPE_3__ Group_Chats ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_CRYPTO_DATA_SIZE ; 
 int /*<<< orphan*/  PACKET_ID_DIRECT_GROUPCHAT ; 
 int PEER_RESPONSE_ID ; 
 int PEER_TITLE_ID ; 
 int crypto_box_PUBLICKEYBYTES ; 
 TYPE_2__* FUNC0 (TYPE_3__*,int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,unsigned int*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned int,int*,int) ; 

__attribute__((used)) static unsigned int FUNC4(Group_Chats *g_c, int groupnumber, int friendcon_id, uint16_t group_num)
{
    Group_c *g = FUNC0(g_c, groupnumber);

    if (!g)
        return -1;

    uint8_t packet[MAX_CRYPTO_DATA_SIZE - (1 + sizeof(uint16_t))];
    packet[0] = PEER_RESPONSE_ID;
    uint8_t *p = packet + 1;

    uint16_t sent = 0;
    unsigned int i;

    for (i = 0; i < g->numpeers; ++i) {
        if ((p - packet) + sizeof(uint16_t) + crypto_box_PUBLICKEYBYTES * 2 + 1 + g->group[i].nick_len > sizeof(packet)) {
            if (FUNC3(g_c->fr_c, friendcon_id, PACKET_ID_DIRECT_GROUPCHAT, group_num, packet, (p - packet))) {
                sent = i;
            } else {
                return sent;
            }

            p = packet + 1;
        }

        uint16_t peer_num = FUNC1(g->group[i].peer_number);
        FUNC2(p, &peer_num, sizeof(peer_num));
        p += sizeof(peer_num);
        FUNC2(p, g->group[i].real_pk, crypto_box_PUBLICKEYBYTES);
        p += crypto_box_PUBLICKEYBYTES;
        FUNC2(p, g->group[i].temp_pk, crypto_box_PUBLICKEYBYTES);
        p += crypto_box_PUBLICKEYBYTES;
        *p = g->group[i].nick_len;
        p += 1;
        FUNC2(p, g->group[i].nick, g->group[i].nick_len);
        p += g->group[i].nick_len;
    }

    if (sent != i) {
        if (FUNC3(g_c->fr_c, friendcon_id, PACKET_ID_DIRECT_GROUPCHAT, group_num, packet, (p - packet))) {
            sent = i;
        }
    }

    if (g->title_len) {
        uint8_t Packet[1 + g->title_len];
        Packet[0] = PEER_TITLE_ID;
        FUNC2(Packet + 1, g->title, g->title_len);
        FUNC3(g_c->fr_c, friendcon_id, PACKET_ID_DIRECT_GROUPCHAT, group_num, Packet, sizeof(Packet));
    }

    return sent;
}