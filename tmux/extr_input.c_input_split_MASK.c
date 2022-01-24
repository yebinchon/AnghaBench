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
typedef  size_t u_int ;
struct input_param {scalar_t__ type; int /*<<< orphan*/  num; int /*<<< orphan*/  str; } ;
struct input_ctx {size_t param_list_len; scalar_t__ param_len; char* param_buf; struct input_param* param_list; } ;

/* Variables and functions */
 scalar_t__ INPUT_MISSING ; 
 scalar_t__ INPUT_NUMBER ; 
 scalar_t__ INPUT_STRING ; 
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,...) ; 
 size_t FUNC2 (struct input_param*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char) ; 
 char* FUNC4 (char**,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int
FUNC7(struct input_ctx *ictx)
{
	const char		*errstr;
	char			*ptr, *out;
	struct input_param	*ip;
	u_int			 i;

	for (i = 0; i < ictx->param_list_len; i++) {
		if (ictx->param_list[i].type == INPUT_STRING)
			FUNC0(ictx->param_list[i].str);
	}
	ictx->param_list_len = 0;

	if (ictx->param_len == 0)
		return (0);
	ip = &ictx->param_list[0];

	ptr = ictx->param_buf;
	while ((out = FUNC4(&ptr, ";")) != NULL) {
		if (*out == '\0')
			ip->type = INPUT_MISSING;
		else {
			if (FUNC3(out, ':') != NULL) {
				ip->type = INPUT_STRING;
				ip->str = FUNC6(out);
			} else {
				ip->type = INPUT_NUMBER;
				ip->num = FUNC5(out, 0, INT_MAX, &errstr);
				if (errstr != NULL)
					return (-1);
			}
		}
		ip = &ictx->param_list[++ictx->param_list_len];
		if (ictx->param_list_len == FUNC2(ictx->param_list))
			return (-1);
	}

	for (i = 0; i < ictx->param_list_len; i++) {
		ip = &ictx->param_list[i];
		if (ip->type == INPUT_MISSING)
			FUNC1("parameter %u: missing", i);
		else if (ip->type == INPUT_STRING)
			FUNC1("parameter %u: string %s", i, ip->str);
		else if (ip->type == INPUT_NUMBER)
			FUNC1("parameter %u: number %d", i, ip->num);
	}

	return (0);
}