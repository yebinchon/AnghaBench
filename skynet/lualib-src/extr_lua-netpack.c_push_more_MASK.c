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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {int size; int /*<<< orphan*/  buffer; } ;
struct uncomplete {int read; TYPE_1__ pack; int /*<<< orphan*/  header; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 struct uncomplete* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(lua_State *L, int fd, uint8_t *buffer, int size) {
	if (size == 1) {
		struct uncomplete * uc = FUNC3(L, fd);
		uc->read = -1;
		uc->header = *buffer;
		return;
	}
	int pack_size = FUNC2(buffer);
	buffer += 2;
	size -= 2;

	if (size < pack_size) {
		struct uncomplete * uc = FUNC3(L, fd);
		uc->read = size;
		uc->pack.size = pack_size;
		uc->pack.buffer = FUNC4(pack_size);
		FUNC0(uc->pack.buffer, buffer, size);
		return;
	}
	FUNC1(L, fd, buffer, pack_size, 1);

	buffer += pack_size;
	size -= pack_size;
	if (size > 0) {
		FUNC5(L, fd, buffer, size);
	}
}