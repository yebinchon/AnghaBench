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
typedef  char u8 ;
typedef  int /*<<< orphan*/  LsmString ;

/* Variables and functions */
 int LSM_OK ; 
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char) ; 

__attribute__((used)) static int FUNC2(LsmString *pStr, int bHex, u8 *z, int n){
  int iChar;
  for(iChar=0; iChar<n; iChar++){
    if( bHex ){
      FUNC1(pStr, "%02X", z[iChar]);
    }else{
      FUNC1(pStr, "%c", FUNC0(z[iChar]) ?z[iChar] : '.');
    }
  }
  return LSM_OK;
}