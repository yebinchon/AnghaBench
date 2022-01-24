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
typedef  int /*<<< orphan*/  tmp ;
struct queue {char** queue; size_t tail; scalar_t__ head; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ QUEUE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdin ; 
 int FUNC7 (char*) ; 

__attribute__((used)) static void *
FUNC8(void * arg) {
	struct queue * q = arg;
	char tmp[1024];
	while (!FUNC1(stdin)) {
		if (FUNC2(tmp,sizeof(tmp),stdin) == NULL) {
			// read stdin failed
			FUNC0(1);
		}
		int n = FUNC7(tmp) -1;

		char * str = FUNC3(n+1);
		FUNC4(str, tmp, n);
		str[n] = 0;

		FUNC5(&q->lock);
		q->queue[q->tail] = str;

		if (++q->tail >= QUEUE_SIZE) {
			q->tail = 0;
		}
		if (q->head == q->tail) {
			// queue overflow
			FUNC0(1);
		}
		FUNC6(&q->lock);
	}
	return NULL;
}