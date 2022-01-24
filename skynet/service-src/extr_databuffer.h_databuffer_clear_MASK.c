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
struct databuffer {scalar_t__ head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct databuffer*,struct messagepool*) ; 
 int /*<<< orphan*/  FUNC1 (struct databuffer*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct databuffer *db, struct messagepool *mp) {
	while (db->head) {
		FUNC0(db,mp);
	}
	FUNC1(db, 0, sizeof(*db));
}