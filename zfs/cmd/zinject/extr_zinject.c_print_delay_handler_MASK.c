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
struct TYPE_3__ {scalar_t__ zi_guid; char* zi_func; scalar_t__ zi_cmd; scalar_t__ zi_nlanes; int /*<<< orphan*/  zi_timer; } ;
typedef  TYPE_1__ zinject_record_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ZINJECT_DELAY_IO ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static int
FUNC2(int id, const char *pool, zinject_record_t *record,
    void *data)
{
	int *count = data;

	if (record->zi_guid == 0 || record->zi_func[0] != '\0')
		return (0);

	if (record->zi_cmd != ZINJECT_DELAY_IO)
		return (0);

	if (*count == 0) {
		(void) FUNC1("%3s  %-15s  %-15s  %-15s  %s\n",
		    "ID", "POOL", "DELAY (ms)", "LANES", "GUID");
		(void) FUNC1("---  ---------------  ---------------  "
		    "---------------  ----------------\n");
	}

	*count += 1;

	(void) FUNC1("%3d  %-15s  %-15llu  %-15llu  %llx\n", id, pool,
	    (u_longlong_t)FUNC0(record->zi_timer),
	    (u_longlong_t)record->zi_nlanes,
	    (u_longlong_t)record->zi_guid);

	return (0);
}