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
typedef  int /*<<< orphan*/  zval ;
typedef  scalar_t__ uint ;

/* Variables and functions */
 int /*<<< orphan*/  YAF_ROUTER_URL_DELIMIETER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*) ; 
 char* FUNC6 (char*,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ *) ; 

void FUNC9(char *uri, zval *params) {
	char *key, *ptrptr, *tmp, *value;
	zval val;
	uint key_len;

	FUNC3(params);

	tmp = FUNC5(uri);
	key = FUNC6(tmp, YAF_ROUTER_URL_DELIMIETER, &ptrptr);
	while (key) {
		key_len = FUNC7(key);
		if (key_len) {
			value = FUNC6(NULL, YAF_ROUTER_URL_DELIMIETER, &ptrptr);
			if (value && FUNC7(value)) {
				FUNC1(&val, value);
			} else {
				FUNC0(&val);
			}
			FUNC8(FUNC2(params), key, key_len, &val);
		}

		key = FUNC6(NULL, YAF_ROUTER_URL_DELIMIETER, &ptrptr);
	}

	FUNC4(tmp);
}