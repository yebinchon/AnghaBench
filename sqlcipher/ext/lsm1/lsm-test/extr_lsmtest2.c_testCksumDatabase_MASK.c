#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  TestDb ;
struct TYPE_3__ {int nRow; scalar_t__ cksum2; scalar_t__ cksum1; } ;
typedef  TYPE_1__ Cksum ;

/* Variables and functions */
 scalar_t__ TEST_CKSUM_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  scanCksumDb ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,int,int) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(
  TestDb *pDb,                    /* Database handle */
  char *zOut                      /* Buffer to write checksum to */
){
  Cksum cksum;
  FUNC1(&cksum, 0, sizeof(Cksum));
  FUNC4(pDb, (void *)&cksum, 0, 0, 0, 0, 0, scanCksumDb);
  FUNC2(zOut, "%d %x %x", 
      cksum.nRow, (u32)cksum.cksum1, (u32)cksum.cksum2
  );
  FUNC0( FUNC3(zOut)<TEST_CKSUM_BYTES );
  return cksum.nRow;
}