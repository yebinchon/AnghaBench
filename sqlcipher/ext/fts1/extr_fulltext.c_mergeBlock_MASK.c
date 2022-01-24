#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_17__ ;

/* Type definitions */
typedef  scalar_t__ sqlite_int64 ;
struct TYPE_24__ {scalar_t__ iType; } ;
struct TYPE_22__ {TYPE_1__* pDoclist; } ;
struct TYPE_23__ {TYPE_17__* pOut; TYPE_2__ in; } ;
struct TYPE_21__ {scalar_t__ iType; } ;
struct TYPE_20__ {scalar_t__ iType; } ;
typedef  TYPE_2__ DocListReader ;
typedef  TYPE_3__ DocListMerge ;
typedef  TYPE_4__ DocList ;

/* Variables and functions */
 scalar_t__ DL_POSITIONS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_17__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_17__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_17__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,scalar_t__,TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC12(DocListMerge *m, DocList *pBlock){
  DocListReader blockReader;
  FUNC0( pBlock->iType >= DL_POSITIONS );
  FUNC9(&blockReader, pBlock);
  while( !FUNC8(&blockReader) ){
    sqlite_int64 iDocid = FUNC6(&blockReader);
    if( m->in.pDoclist!=NULL ){
      while( 1 ){
        if( FUNC8(&m->in) ) return;  /* nothing more to merge */
        if( FUNC5(&m->in)>=iDocid ) break;
        FUNC10(&m->in);
      }
      if( FUNC5(&m->in)>iDocid ){  /* [pIn] has no match with iDocid */
        FUNC11(&blockReader);  /* skip this docid in the block */
        continue;
      }
      FUNC6(&m->in);
    }
    /* We have a document match. */
    if( m->in.pDoclist==NULL || m->in.pDoclist->iType < DL_POSITIONS ){
      /* We don't need to do a poslist merge. */
      FUNC1(m->pOut, iDocid);
      if( m->pOut->iType >= DL_POSITIONS ){
        /* Copy all positions to the output doclist. */
        while( 1 ){
          int pos = FUNC7(&blockReader);
          if( pos==-1 ) break;
          FUNC3(m->pOut, pos);
        }
        FUNC2(m->pOut);
      } else FUNC11(&blockReader);
      continue;
    }
    FUNC4(m, iDocid, &blockReader);
  }
}