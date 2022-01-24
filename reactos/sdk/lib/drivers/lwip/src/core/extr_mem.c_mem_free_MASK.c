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
typedef  int /*<<< orphan*/  u8_t ;
struct mem {int used; scalar_t__ next; } ;
typedef  scalar_t__ mem_size_t ;
typedef  int mem_ptr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int LWIP_DBG_LEVEL_SERIOUS ; 
 int LWIP_DBG_LEVEL_SEVERE ; 
 int LWIP_DBG_TRACE ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int MEM_ALIGNMENT ; 
 int MEM_DEBUG ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SIZEOF_STRUCT_MEM ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  illegal ; 
 int /*<<< orphan*/  lev ; 
 struct mem* lfree ; 
 int mem_free_count ; 
 int /*<<< orphan*/  FUNC10 (struct mem*) ; 
 int /*<<< orphan*/ * ram ; 
 scalar_t__ ram_end ; 
 int /*<<< orphan*/  used ; 

void
FUNC11(void *rmem)
{
  struct mem *mem;
  FUNC2();

  if (rmem == NULL) {
    FUNC1(MEM_DEBUG | LWIP_DBG_TRACE | LWIP_DBG_LEVEL_SERIOUS, ("mem_free(p == NULL) was called.\n"));
    return;
  }
  FUNC0("mem_free: sanity check alignment", (((mem_ptr_t)rmem) & (MEM_ALIGNMENT-1)) == 0);

  FUNC0("mem_free: legal memory", (u8_t *)rmem >= (u8_t *)ram &&
    (u8_t *)rmem < (u8_t *)ram_end);

  if ((u8_t *)rmem < (u8_t *)ram || (u8_t *)rmem >= (u8_t *)ram_end) {
    FUNC7(lev);
    FUNC1(MEM_DEBUG | LWIP_DBG_LEVEL_SEVERE, ("mem_free: illegal memory\n"));
    /* protect mem stats from concurrent access */
    FUNC8(lev);
    FUNC6(illegal);
    FUNC9(lev);
    return;
  }
  /* protect the heap from concurrent access */
  FUNC3();
  /* Get the corresponding struct mem ... */
  mem = (struct mem *)(void *)((u8_t *)rmem - SIZEOF_STRUCT_MEM);
  /* ... which has to be in a used state ... */
  FUNC0("mem_free: mem->used", mem->used);
  /* ... and is now unused. */
  mem->used = 0;

  if (mem < lfree) {
    /* the newly freed struct is now the lowest */
    lfree = mem;
  }

  FUNC5(used, mem->next - (mem_size_t)(((u8_t *)mem - ram)));

  /* finally, see if prev or next are free also */
  FUNC10(mem);
#if LWIP_ALLOW_MEM_FREE_FROM_OTHER_CONTEXT
  mem_free_count = 1;
#endif /* LWIP_ALLOW_MEM_FREE_FROM_OTHER_CONTEXT */
  FUNC4();
}