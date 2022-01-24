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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  Fts5Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ *,char*,char const*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,scalar_t__*) ; 

__attribute__((used)) static void FUNC2(
  int *pRc,                       /* IN/OUT: error code */
  Fts5Buffer *pBuf,
  const u8 *pBlob, int nBlob
){
  int i = 0;
  const char *zSpace = "";

  while( i<nBlob ){
    u64 iVal;
    i += FUNC1(&pBlob[i], &iVal);
    FUNC0(pRc, pBuf, "%s%d", zSpace, (int)iVal);
    zSpace = " ";
  }
}