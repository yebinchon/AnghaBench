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
typedef  int uint32_t ;
struct TYPE_4__ {int name_length; int statusmessage_length; int /*<<< orphan*/  dht; } ;
typedef  TYPE_1__ Messenger ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int NUM_SAVED_PATH_NODES ; 
 int NUM_SAVED_TCP_RELAYS ; 
 int /*<<< orphan*/  TCP_INET6 ; 
 int crypto_box_PUBLICKEYBYTES ; 
 int crypto_box_SECRETKEYBYTES ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__ const*) ; 

uint32_t FUNC3(const Messenger *m)
{
    uint32_t size32 = sizeof(uint32_t), sizesubhead = size32 * 2;
    return   size32 * 2                                      // global cookie
             + sizesubhead + sizeof(uint32_t) + crypto_box_PUBLICKEYBYTES + crypto_box_SECRETKEYBYTES
             + sizesubhead + FUNC0(m->dht)                  // DHT
             + sizesubhead + FUNC2(m)         // Friendlist itself.
             + sizesubhead + m->name_length                    // Own nickname.
             + sizesubhead + m->statusmessage_length           // status message
             + sizesubhead + 1                                 // status
             + sizesubhead + NUM_SAVED_TCP_RELAYS * FUNC1(TCP_INET6) //TCP relays
             + sizesubhead + NUM_SAVED_PATH_NODES * FUNC1(TCP_INET6) //saved path nodes
             + sizesubhead;
}