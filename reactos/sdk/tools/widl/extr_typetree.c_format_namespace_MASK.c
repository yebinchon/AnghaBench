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
struct namespace {char* name; struct namespace* parent; } ;

/* Variables and functions */
 char* FUNC0 (char*,struct namespace*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct namespace*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int FUNC3 (char const*) ; 
 scalar_t__ use_abi_namespace ; 
 char* FUNC4 (unsigned int) ; 

char *FUNC5(struct namespace *namespace, const char *prefix, const char *separator, const char *suffix)
{
    unsigned len = FUNC3(prefix) + FUNC3(suffix);
    unsigned sep_len = FUNC3(separator);
    struct namespace *iter;
    char *ret, *ptr;

    if(use_abi_namespace && !FUNC1(namespace))
        len += 3 /* strlen("ABI") */ + sep_len;

    for(iter = namespace; !FUNC1(iter); iter = iter->parent)
        len += FUNC3(iter->name) + sep_len;

    ret = FUNC4(len+1);
    FUNC2(ret, prefix);
    ptr = FUNC0(ret + FUNC3(ret), namespace, separator);
    FUNC2(ptr, suffix);

    return ret;
}