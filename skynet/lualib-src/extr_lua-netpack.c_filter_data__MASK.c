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
typedef  void* uint8_t ;
struct TYPE_2__ {int size; void* buffer; } ;
struct uncomplete {int read; int header; TYPE_1__ pack; struct uncomplete* next; } ;
struct queue {struct uncomplete** hash; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  TYPE_DATA ; 
 int /*<<< orphan*/  TYPE_MORE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct uncomplete* FUNC1 (struct queue*,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct queue* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*,void**,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,void**,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,void**,int) ; 
 int FUNC11 (void**) ; 
 struct uncomplete* FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (struct uncomplete*) ; 
 void* FUNC14 (int) ; 

__attribute__((used)) static int
FUNC15(lua_State *L, int fd, uint8_t * buffer, int size) {
	struct queue *q = FUNC6(L,1);
	struct uncomplete * uc = FUNC1(q, fd);
	if (uc) {
		// fill uncomplete
		if (uc->read < 0) {
			// read size
			FUNC0(uc->read == -1);
			int pack_size = *buffer;
			pack_size |= uc->header << 8 ;
			++buffer;
			--size;
			uc->pack.size = pack_size;
			uc->pack.buffer = FUNC14(pack_size);
			uc->read = 0;
		}
		int need = uc->pack.size - uc->read;
		if (size < need) {
			FUNC8(uc->pack.buffer + uc->read, buffer, size);
			uc->read += size;
			int h = FUNC2(fd);
			uc->next = q->hash[h];
			q->hash[h] = uc;
			return 1;
		}
		FUNC8(uc->pack.buffer + uc->read, buffer, need);
		buffer += need;
		size -= need;
		if (size == 0) {
			FUNC5(L, FUNC7(TYPE_DATA));
			FUNC3(L, fd);
			FUNC4(L, uc->pack.buffer);
			FUNC3(L, uc->pack.size);
			FUNC13(uc);
			return 5;
		}
		// more data
		FUNC9(L, fd, uc->pack.buffer, uc->pack.size, 0);
		FUNC13(uc);
		FUNC10(L, fd, buffer, size);
		FUNC5(L, FUNC7(TYPE_MORE));
		return 2;
	} else {
		if (size == 1) {
			struct uncomplete * uc = FUNC12(L, fd);
			uc->read = -1;
			uc->header = *buffer;
			return 1;
		}
		int pack_size = FUNC11(buffer);
		buffer+=2;
		size-=2;

		if (size < pack_size) {
			struct uncomplete * uc = FUNC12(L, fd);
			uc->read = size;
			uc->pack.size = pack_size;
			uc->pack.buffer = FUNC14(pack_size);
			FUNC8(uc->pack.buffer, buffer, size);
			return 1;
		}
		if (size == pack_size) {
			// just one package
			FUNC5(L, FUNC7(TYPE_DATA));
			FUNC3(L, fd);
			void * result = FUNC14(pack_size);
			FUNC8(result, buffer, size);
			FUNC4(L, result);
			FUNC3(L, size);
			return 5;
		}
		// more data
		FUNC9(L, fd, buffer, pack_size, 1);
		buffer += pack_size;
		size -= pack_size;
		FUNC10(L, fd, buffer, size);
		FUNC5(L, FUNC7(TYPE_MORE));
		return 2;
	}
}