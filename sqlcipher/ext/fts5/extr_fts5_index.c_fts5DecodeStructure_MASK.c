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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  Fts5Structure ;
typedef  int /*<<< orphan*/  Fts5Buffer ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(
  int *pRc,                       /* IN/OUT: error code */
  Fts5Buffer *pBuf,
  const u8 *pBlob, int nBlob
){
  int rc;                         /* Return code */
  Fts5Structure *p = 0;           /* Decoded structure object */

  rc = FUNC1(pBlob, nBlob, 0, &p);
  if( rc!=SQLITE_OK ){
    *pRc = rc;
    return;
  }

  FUNC0(pRc, pBuf, p);
  FUNC2(p);
}