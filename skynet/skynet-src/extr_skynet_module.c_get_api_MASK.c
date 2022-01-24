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
struct skynet_module {char const* name; int /*<<< orphan*/  module; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 size_t FUNC2 (char const*) ; 
 char* FUNC3 (char*,char) ; 

__attribute__((used)) static void *
FUNC4(struct skynet_module *mod, const char *api_name) {
	size_t name_size = FUNC2(mod->name);
	size_t api_size = FUNC2(api_name);
	char tmp[name_size + api_size + 1];
	FUNC1(tmp, mod->name, name_size);
	FUNC1(tmp+name_size, api_name, api_size+1);
	char *ptr = FUNC3(tmp, '.');
	if (ptr == NULL) {
		ptr = tmp;
	} else {
		ptr = ptr + 1;
	}
	return FUNC0(mod->module, ptr);
}