#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite_int64 ;
struct TYPE_7__ {scalar_t__ iType; } ;
struct TYPE_6__ {int iOffset; TYPE_3__* pOut; int /*<<< orphan*/  in; } ;
typedef  int /*<<< orphan*/  DocListReader ;
typedef  TYPE_1__ DocListMerge ;

/* Variables and functions */
 scalar_t__ DL_POSITIONS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(DocListMerge *m, sqlite_int64 iDocid,
                  DocListReader *pBlockReader){
  int block_pos = FUNC3(pBlockReader);
  int in_pos = FUNC3(&m->in);
  int match = 0;
  while( block_pos!=-1 || in_pos!=-1 ){
    if( block_pos-m->iOffset==in_pos ){
      if( !match ){
        FUNC0(m->pOut, iDocid);
        match = 1;
      }
      if( m->pOut->iType >= DL_POSITIONS ){
        FUNC2(m->pOut, in_pos);
      }
      block_pos = FUNC3(pBlockReader);
      in_pos = FUNC3(&m->in);
    } else if( in_pos==-1 || (block_pos!=-1 && block_pos-m->iOffset<in_pos) ){
      block_pos = FUNC3(pBlockReader);
    } else {
      in_pos = FUNC3(&m->in);
    }
  }
  if( m->pOut->iType >= DL_POSITIONS && match ){
    FUNC1(m->pOut);
  }
}