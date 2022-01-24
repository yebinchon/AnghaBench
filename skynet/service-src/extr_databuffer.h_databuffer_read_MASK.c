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
struct messagepool {int dummy; } ;
struct message {int size; int buffer; } ;
struct databuffer {int size; int offset; struct message* head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct databuffer*,struct messagepool*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int,int) ; 

__attribute__((used)) static void
FUNC3(struct databuffer *db, struct messagepool *mp, void * buffer, int sz) {
	FUNC1(db->size >= sz);
	db->size -= sz;
	for (;;) {
		struct message *current = db->head;
		int bsz = current->size - db->offset;
		if (bsz > sz) {
			FUNC2(buffer, current->buffer + db->offset, sz);
			db->offset += sz;
			return;
		}
		if (bsz == sz) {
			FUNC2(buffer, current->buffer + db->offset, sz);
			db->offset = 0;
			FUNC0(db, mp);
			return;
		} else {
			FUNC2(buffer, current->buffer + db->offset, bsz);
			FUNC0(db, mp);
			db->offset = 0;
			buffer+=bsz;
			sz-=bsz;
		}
	}
}