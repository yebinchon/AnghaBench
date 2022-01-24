#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int type; } ;
struct TYPE_8__ {TYPE_2__* value; } ;
typedef  TYPE_1__ RedisModuleKey ;

/* Variables and functions */
#define  OBJ_HASH 132 
#define  OBJ_LIST 131 
#define  OBJ_SET 130 
#define  OBJ_STRING 129 
#define  OBJ_ZSET 128 
 size_t FUNC0 (TYPE_2__*) ; 
 size_t FUNC1 (TYPE_2__*) ; 
 size_t FUNC2 (TYPE_2__*) ; 
 size_t FUNC3 (TYPE_2__*) ; 
 size_t FUNC4 (TYPE_2__*) ; 

size_t FUNC5(RedisModuleKey *key) {
    if (key == NULL || key->value == NULL) return 0;
    switch(key->value->type) {
    case OBJ_STRING: return FUNC3(key->value);
    case OBJ_LIST: return FUNC1(key->value);
    case OBJ_SET: return FUNC2(key->value);
    case OBJ_ZSET: return FUNC4(key->value);
    case OBJ_HASH: return FUNC0(key->value);
    default: return 0;
    }
}