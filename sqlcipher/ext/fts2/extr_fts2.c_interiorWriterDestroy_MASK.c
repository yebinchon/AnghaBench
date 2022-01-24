#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  term; struct TYPE_6__* parentWriter; int /*<<< orphan*/  data; struct TYPE_6__* next; struct TYPE_6__* first; } ;
typedef  TYPE_1__ InteriorWriter ;
typedef  TYPE_1__ InteriorBlock ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(InteriorWriter *pWriter){
  InteriorBlock *block = pWriter->first;

  while( block!=NULL ){
    InteriorBlock *b = block;
    block = block->next;
    FUNC1(&b->term);
    FUNC1(&b->data);
    FUNC2(b);
  }
  if( pWriter->parentWriter!=NULL ){
    FUNC3(pWriter->parentWriter);
    FUNC2(pWriter->parentWriter);
  }
  FUNC1(&pWriter->term);
  FUNC0(pWriter);
  return SQLITE_OK;
}