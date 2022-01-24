#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_5__ {int verbosity; } ;
struct TYPE_4__ {char* name; } ;
typedef  TYPE_1__ RedisModule ;

/* Variables and functions */
 int LL_DEBUG ; 
 int LL_NOTICE ; 
 int LL_VERBOSE ; 
 int LL_WARNING ; 
 int LOG_MAX_LEN ; 
 TYPE_2__ server ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 size_t FUNC1 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char const*,int /*<<< orphan*/ ) ; 

void FUNC4(RedisModule *module, const char *levelstr, const char *fmt, va_list ap) {
    char msg[LOG_MAX_LEN];
    size_t name_len;
    int level;

    if (!FUNC2(levelstr,"debug")) level = LL_DEBUG;
    else if (!FUNC2(levelstr,"verbose")) level = LL_VERBOSE;
    else if (!FUNC2(levelstr,"notice")) level = LL_NOTICE;
    else if (!FUNC2(levelstr,"warning")) level = LL_WARNING;
    else level = LL_VERBOSE; /* Default. */

    if (level < server.verbosity) return;

    name_len = FUNC1(msg, sizeof(msg),"<%s> ", module? module->name: "module");
    FUNC3(msg + name_len, sizeof(msg) - name_len, fmt, ap);
    FUNC0(level,msg);
}