#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ robj ;
struct TYPE_7__ {TYPE_1__* cluster; } ;
struct TYPE_5__ {int* slots_keys_count; int /*<<< orphan*/  slots_to_keys; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char*,size_t,int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_4__ server ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*) ; 
 unsigned char* FUNC6 (size_t) ; 

void FUNC7(robj *key, int add) {
    unsigned int hashslot = FUNC0(key->ptr,FUNC4(key->ptr));
    unsigned char buf[64];
    unsigned char *indexed = buf;
    size_t keylen = FUNC4(key->ptr);

    server.cluster->slots_keys_count[hashslot] += add ? 1 : -1;
    if (keylen+2 > 64) indexed = FUNC6(keylen+2);
    indexed[0] = (hashslot >> 8) & 0xff;
    indexed[1] = hashslot & 0xff;
    FUNC1(indexed+2,key->ptr,keylen);
    if (add) {
        FUNC2(server.cluster->slots_to_keys,indexed,keylen+2,NULL,NULL);
    } else {
        FUNC3(server.cluster->slots_to_keys,indexed,keylen+2,NULL);
    }
    if (indexed != buf) FUNC5(indexed);
}