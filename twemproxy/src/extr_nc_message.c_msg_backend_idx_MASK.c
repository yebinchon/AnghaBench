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
typedef  int /*<<< orphan*/  uint32_t ;
struct server_pool {int dummy; } ;
struct msg {struct conn* owner; } ;
struct conn {struct server_pool* owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct server_pool*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

uint32_t
FUNC1(struct msg *msg, uint8_t *key, uint32_t keylen)
{
    struct conn *conn = msg->owner;
    struct server_pool *pool = conn->owner;

    return FUNC0(pool, key, keylen);
}