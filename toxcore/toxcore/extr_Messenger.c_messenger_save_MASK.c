#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  nodes ;
struct TYPE_6__ {int name_length; int statusmessage_length; int /*<<< orphan*/  onion_c; int /*<<< orphan*/  net_crypto; int /*<<< orphan*/  dht; int /*<<< orphan*/  userstatus; int /*<<< orphan*/  statusmessage; int /*<<< orphan*/  name; int /*<<< orphan*/  fr; } ;
typedef  int /*<<< orphan*/  Node_format ;
typedef  TYPE_1__ Messenger ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MESSENGER_STATE_COOKIE_GLOBAL ; 
 int /*<<< orphan*/  MESSENGER_STATE_TYPE_DHT ; 
 int /*<<< orphan*/  MESSENGER_STATE_TYPE_END ; 
 int /*<<< orphan*/  MESSENGER_STATE_TYPE_FRIENDS ; 
 int /*<<< orphan*/  MESSENGER_STATE_TYPE_NAME ; 
 int /*<<< orphan*/  MESSENGER_STATE_TYPE_NOSPAMKEYS ; 
 int /*<<< orphan*/  MESSENGER_STATE_TYPE_PATH_NODE ; 
 int /*<<< orphan*/  MESSENGER_STATE_TYPE_STATUS ; 
 int /*<<< orphan*/  MESSENGER_STATE_TYPE_STATUSMESSAGE ; 
 int /*<<< orphan*/  MESSENGER_STATE_TYPE_TCP_RELAY ; 
 int NUM_SAVED_PATH_NODES ; 
 int NUM_SAVED_TCP_RELAYS ; 
 int /*<<< orphan*/  TCP_INET6 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int crypto_box_PUBLICKEYBYTES ; 
 int crypto_box_SECRETKEYBYTES ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (TYPE_1__ const*) ; 
 unsigned int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC14 (TYPE_1__ const*) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

void FUNC16(const Messenger *m, uint8_t *data)
{
    FUNC8(data, 0, FUNC9(m));

    uint32_t len;
    uint16_t type;
    uint32_t size32 = sizeof(uint32_t);

    FUNC8(data, 0, size32);
    data += size32;
    FUNC6(data, MESSENGER_STATE_COOKIE_GLOBAL);
    data += size32;

#ifdef DEBUG
    assert(sizeof(get_nospam(&(m->fr))) == sizeof(uint32_t));
#endif
    len = size32 + crypto_box_PUBLICKEYBYTES + crypto_box_SECRETKEYBYTES;
    type = MESSENGER_STATE_TYPE_NOSPAMKEYS;
    data = FUNC15(data, len, type);
    *(uint32_t *)data = FUNC5(&(m->fr));
    FUNC13(m->net_crypto, data + size32);
    data += len;

    len = FUNC14(m);
    type = MESSENGER_STATE_TYPE_FRIENDS;
    data = FUNC15(data, len, type);
    FUNC4(m, data);
    data += len;

    len = m->name_length;
    type = MESSENGER_STATE_TYPE_NAME;
    data = FUNC15(data, len, type);
    FUNC7(data, m->name, len);
    data += len;

    len = m->statusmessage_length;
    type = MESSENGER_STATE_TYPE_STATUSMESSAGE;
    data = FUNC15(data, len, type);
    FUNC7(data, m->statusmessage, len);
    data += len;

    len = 1;
    type = MESSENGER_STATE_TYPE_STATUS;
    data = FUNC15(data, len, type);
    *data = m->userstatus;
    data += len;

    len = FUNC1(m->dht);
    type = MESSENGER_STATE_TYPE_DHT;
    data = FUNC15(data, len, type);
    FUNC0(m->dht, data);
    data += len;

    Node_format relays[NUM_SAVED_TCP_RELAYS];
    type = MESSENGER_STATE_TYPE_TCP_RELAY;
    uint8_t *temp_data = data;
    data = FUNC15(temp_data, 0, type);
    unsigned int num = FUNC3(m->net_crypto, relays, NUM_SAVED_TCP_RELAYS);
    int l = FUNC11(data, NUM_SAVED_TCP_RELAYS * FUNC12(TCP_INET6), relays, num);

    if (l > 0) {
        len = l;
        data = FUNC15(temp_data, len, type);
        data += len;
    }

    Node_format nodes[NUM_SAVED_PATH_NODES];
    type = MESSENGER_STATE_TYPE_PATH_NODE;
    temp_data = data;
    data = FUNC15(data, 0, type);
    FUNC8(nodes, 0, sizeof(nodes));
    num = FUNC10(m->onion_c, nodes, NUM_SAVED_PATH_NODES);
    l = FUNC11(data, NUM_SAVED_PATH_NODES * FUNC12(TCP_INET6), nodes, num);

    if (l > 0) {
        len = l;
        data = FUNC15(temp_data, len, type);
        data += len;
    }

    FUNC15(data, 0, MESSENGER_STATE_TYPE_END);
}