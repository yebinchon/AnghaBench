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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_4__ {int /*<<< orphan*/  zErrMsg; } ;
struct TYPE_5__ {scalar_t__ szCurrent; TYPE_1__ base; int /*<<< orphan*/  pWriteFd; } ;
typedef  TYPE_2__ ZipfileTab ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,long,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/  const*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(
  ZipfileTab *pTab,
  const u8 *aWrite,
  int nWrite
){
  size_t n;
  FUNC0(pTab->pWriteFd, (long)pTab->szCurrent, SEEK_SET);
  n = FUNC1(aWrite, 1, nWrite, pTab->pWriteFd);
  if( (int)n!=nWrite ){
    pTab->base.zErrMsg = FUNC2("error in fwrite()");
    return SQLITE_ERROR;
  }
  pTab->szCurrent += nWrite;
  return SQLITE_OK;
}