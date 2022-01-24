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
struct TYPE_3__ {char* zi_func; } ;
typedef  TYPE_1__ zinject_record_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static int
FUNC1(int id, const char *pool, zinject_record_t *record,
    void *data)
{
	int *count = data;

	if (record->zi_func[0] == '\0')
		return (0);

	if (*count == 0) {
		(void) FUNC0("%3s  %-15s  %s\n", "ID", "POOL", "FUNCTION");
		(void) FUNC0("---  ---------------  ----------------\n");
	}

	*count += 1;

	(void) FUNC0("%3d  %-15s  %s\n", id, pool, record->zi_func);

	return (0);
}