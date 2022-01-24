#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  aBuffer; } ;
typedef  TYPE_1__ ZipfileTab ;
typedef  int /*<<< orphan*/  ZipfileEOCD ;

/* Variables and functions */
 int ZIPFILE_EOCD_FIXED_SZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(ZipfileTab *pTab, ZipfileEOCD *p){
  int nBuf = FUNC2(p, pTab->aBuffer);
  FUNC0( nBuf==ZIPFILE_EOCD_FIXED_SZ );
  return FUNC1(pTab, pTab->aBuffer, nBuf);
}