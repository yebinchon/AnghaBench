#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int __u8 ;
struct TYPE_2__ {char* prefix; int name_index; } ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,size_t) ; 
 TYPE_1__* prefix_tbl ; 
 size_t FUNC2 (char*) ; 

const char *FUNC3(const char *full_name, size_t full_name_len,
			      __u8 *name_index, size_t *name_len,
			      BOOL *found)
{
	int i;
	FUNC0(name_index);
	FUNC0(found);

	*found = FALSE;

	if (!full_name_len) {
		if (name_len)
			*name_len = 0;

		return NULL;
	}

	for (i = 0; prefix_tbl[i].prefix; i++) {
		size_t prefix_len = FUNC2(prefix_tbl[i].prefix);
		if (full_name_len >= prefix_len &&
		    !FUNC1(full_name, prefix_tbl[i].prefix, prefix_len)) {
			BOOL require_name =
				prefix_tbl[i].prefix[prefix_len - 1] == '.';
			*name_index = prefix_tbl[i].name_index;
			if (name_len)
				*name_len = full_name_len - prefix_len;

			if (!(full_name_len - prefix_len) && require_name)
				return NULL;

			*found = TRUE;
			if (require_name)
				return full_name + prefix_len;

			return NULL;
		}
	}
	if (name_len)
		*name_len = 0;

	return NULL;
}