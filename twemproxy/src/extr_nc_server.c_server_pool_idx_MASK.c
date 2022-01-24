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
typedef  int uint32_t ;
struct string {int /*<<< orphan*/ * data; } ;
struct server_pool {int dist_type; int /*<<< orphan*/  server; int /*<<< orphan*/  ncontinuum; int /*<<< orphan*/  continuum; struct string hash_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  DIST_KETAMA 130 
#define  DIST_MODULA 129 
#define  DIST_RANDOM 128 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct server_pool*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct string*) ; 

uint32_t
FUNC9(struct server_pool *pool, uint8_t *key, uint32_t keylen)
{
    uint32_t hash, idx;

    FUNC0(FUNC2(&pool->server) != 0);
    FUNC0(key != NULL);

    /*
     * If hash_tag: is configured for this server pool, we use the part of
     * the key within the hash tag as an input to the distributor. Otherwise
     * we use the full key
     */
    if (!FUNC8(&pool->hash_tag)) {
        struct string *tag = &pool->hash_tag;
        uint8_t *tag_start, *tag_end;

        tag_start = FUNC5(key, key + keylen, tag->data[0]);
        if (tag_start != NULL) {
            tag_end = FUNC5(tag_start + 1, key + keylen, tag->data[1]);
            if ((tag_end != NULL) && (tag_end - tag_start > 1)) {
                key = tag_start + 1;
                keylen = (uint32_t)(tag_end - key);
            }
        }
    }

    switch (pool->dist_type) {
    case DIST_KETAMA:
        hash = FUNC7(pool, key, keylen);
        idx = FUNC3(pool->continuum, pool->ncontinuum, hash);
        break;

    case DIST_MODULA:
        hash = FUNC7(pool, key, keylen);
        idx = FUNC4(pool->continuum, pool->ncontinuum, hash);
        break;

    case DIST_RANDOM:
        idx = FUNC6(pool->continuum, pool->ncontinuum, 0);
        break;

    default:
        FUNC1();
        return 0;
    }
    FUNC0(idx < FUNC2(&pool->server));
    return idx;
}