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
typedef  int /*<<< orphan*/  uint32_t ;
struct handle_storage {int name_count; int name_cap; struct handle_name* name; } ;
struct handle_name {char* name; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int MAX_SLOT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct handle_name*) ; 
 struct handle_name* FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(struct handle_storage *s, char *name, uint32_t handle, int before) {
	if (s->name_count >= s->name_cap) {
		s->name_cap *= 2;
		FUNC0(s->name_cap <= MAX_SLOT_SIZE);
		struct handle_name * n = FUNC2(s->name_cap * sizeof(struct handle_name));
		int i;
		for (i=0;i<before;i++) {
			n[i] = s->name[i];
		}
		for (i=before;i<s->name_count;i++) {
			n[i+1] = s->name[i];
		}
		FUNC1(s->name);
		s->name = n;
	} else {
		int i;
		for (i=s->name_count;i>before;i--) {
			s->name[i] = s->name[i-1];
		}
	}
	s->name[before].name = name;
	s->name[before].handle = handle;
	s->name_count ++;
}