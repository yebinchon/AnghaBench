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
struct TYPE_7__ {char* ptr; } ;
struct TYPE_8__ {TYPE_1__ string; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_2__ u; } ;
typedef  TYPE_3__ json_value ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_3__ const*,char const*) ; 
 scalar_t__ json_string ; 

__attribute__((used)) static inline
char * FUNC1(const json_value *node, const char *key)
{
    node = FUNC0(node, key);
    if (node && node->type == json_string)
        return node->u.string.ptr;
    return NULL;
}