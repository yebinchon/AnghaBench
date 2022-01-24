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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  Node_format ;
typedef  int /*<<< orphan*/  DHT ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_TYPE_GETNODE_REQ ; 
 int crypto_box_PUBLICKEYBYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(DHT *dht, Node_format *dest, Node_format *node_totest, uint8_t *search_id)
{
    uint8_t data[sizeof(Node_format) + crypto_box_PUBLICKEYBYTES];
    FUNC0(data, node_totest, sizeof(Node_format));
    FUNC0(data + sizeof(Node_format), search_id, crypto_box_PUBLICKEYBYTES);
    return FUNC1(dht, dest, CHECK_TYPE_GETNODE_REQ, data, sizeof(Node_format) + crypto_box_PUBLICKEYBYTES);
}