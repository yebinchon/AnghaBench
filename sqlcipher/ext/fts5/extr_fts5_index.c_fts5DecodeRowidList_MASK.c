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
typedef  int u8 ;
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  i64 ;
typedef  int /*<<< orphan*/  Fts5Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC1 (int const*,scalar_t__*) ; 

__attribute__((used)) static void FUNC2(
  int *pRc,                       /* IN/OUT: Error code */
  Fts5Buffer *pBuf,               /* Buffer to append text to */
  const u8 *pData, int nData      /* Data to decode list-of-rowids from */
){
  int i = 0;
  i64 iRowid = 0;

  while( i<nData ){
    const char *zApp = "";
    u64 iVal;
    i += FUNC1(&pData[i], &iVal);
    iRowid += iVal;

    if( i<nData && pData[i]==0x00 ){
      i++;
      if( i<nData && pData[i]==0x00 ){
        i++;
        zApp = "+";
      }else{
        zApp = "*";
      }
    }

    FUNC0(pRc, pBuf, " %lld%s", iRowid, zApp);
  }
}