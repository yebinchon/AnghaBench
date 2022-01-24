#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int sqlite_int64 ;
struct TYPE_5__ {int /*<<< orphan*/  data; int /*<<< orphan*/  term; } ;
typedef  TYPE_1__ InteriorBlock ;

/* Variables and functions */
 int /*<<< orphan*/  INTERIOR_MAX ; 
 int VARINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char*,int) ; 
 TYPE_1__* FUNC4 (int) ; 

__attribute__((used)) static InteriorBlock *FUNC5(int iHeight, sqlite_int64 iChildBlock,
                                       const char *pTerm, int nTerm){
  InteriorBlock *block = FUNC4(sizeof(InteriorBlock));
  char c[VARINT_MAX+VARINT_MAX];
  int n;

  if( block ){
    FUNC2(block, 0, sizeof(*block));
    FUNC0(&block->term, 0);
    FUNC1(&block->term, pTerm, nTerm);

    n = FUNC3(c, iHeight);
    n += FUNC3(c+n, iChildBlock);
    FUNC0(&block->data, INTERIOR_MAX);
    FUNC1(&block->data, c, n);
  }
  return block;
}