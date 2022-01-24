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
typedef  scalar_t__ uint32_t ;
struct server_pool {scalar_t__ (* key_hash ) (char*,scalar_t__) ;int /*<<< orphan*/  server; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,scalar_t__) ; 

__attribute__((used)) static uint32_t
FUNC3(struct server_pool *pool, uint8_t *key, uint32_t keylen)
{
    FUNC0(FUNC1(&pool->server) != 0);
    FUNC0(key != NULL);

    if (FUNC1(&pool->server) == 1) {
        return 0;
    }

    if (keylen == 0) {
        return 0;
    }

    return pool->key_hash((char *)key, keylen);
}