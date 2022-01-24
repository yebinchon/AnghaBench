#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char const* ptr; } ;
typedef  TYPE_1__ RedisModuleString ;

/* Variables and functions */
 size_t FUNC0 (char const*) ; 
 size_t FUNC1 (char const*) ; 

const char *FUNC2(const RedisModuleString *str, size_t *len) {
    if (str == NULL) {
        const char *errmsg = "(NULL string reply referenced in module)";
        if (len) *len = FUNC1(errmsg);
        return errmsg;
    }
    if (len) *len = FUNC0(str->ptr);
    return str->ptr;
}