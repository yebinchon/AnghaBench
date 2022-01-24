#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lsm_env ;
typedef  int /*<<< orphan*/  TreeCursor ;
struct TYPE_5__ {int /*<<< orphan*/  val; int /*<<< orphan*/  key; int /*<<< orphan*/  eType; int /*<<< orphan*/  flags; TYPE_1__* pDb; } ;
struct TYPE_4__ {int /*<<< orphan*/ * pEnv; } ;
typedef  TYPE_2__ MultiCursor ;

/* Variables and functions */
 int /*<<< orphan*/  CURSOR_SEEK_EQ ; 
 int LSM_END_DELETE ; 
 int LSM_INSERT ; 
 int LSM_OK ; 
 int LSM_POINT_DELETE ; 
#define  LSM_SEEK_EQ 129 
#define  LSM_SEEK_GE 128 
 int LSM_START_DELETE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void*,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,void**,int*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int) ; 

__attribute__((used)) static int FUNC10(
  MultiCursor *pCsr,
  TreeCursor *pTreeCsr, 
  void *pKey, int nKey, 
  int eSeek,
  int *pbStop
){
  int rc = LSM_OK;
  if( pTreeCsr ){
    int res = 0;
    FUNC6(pTreeCsr, pKey, nKey, &res);
    switch( eSeek ){
      case LSM_SEEK_EQ: {
        int eType = FUNC1(pTreeCsr);
        if( (res<0 && (eType & LSM_START_DELETE))
         || (res>0 && (eType & LSM_END_DELETE))
         || (res==0 && (eType & LSM_POINT_DELETE))
        ){
          *pbStop = 1;
        }else if( res==0 && (eType & LSM_INSERT) ){
          lsm_env *pEnv = pCsr->pDb->pEnv;
          void *p; int n;         /* Key/value from tree-cursor */
          *pbStop = 1;
          pCsr->flags |= CURSOR_SEEK_EQ;
          rc = FUNC2(pTreeCsr, &pCsr->eType, &p, &n);
          if( rc==LSM_OK ) rc = FUNC9(pEnv, &pCsr->key, p, n);
          if( rc==LSM_OK ) rc = FUNC8(pTreeCsr, &p, &n);
          if( rc==LSM_OK ) rc = FUNC9(pEnv, &pCsr->val, p, n);
        }
        FUNC5(pTreeCsr);
        break;
      }
      case LSM_SEEK_GE:
        if( res<0 && FUNC7(pTreeCsr) ){
          FUNC3(pTreeCsr);
        }
        break;
      default:
        if( res>0 ){
          FUNC0( FUNC7(pTreeCsr) );
          FUNC4(pTreeCsr);
        }
        break;
    }
  }
  return rc;
}