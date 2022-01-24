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

/* Variables and functions */
 void* cksumNonce ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 void* pageSize ; 
 void* FUNC1 (unsigned char*,int,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 unsigned char* FUNC3 (int,int) ; 
 void* sectorSize ; 

__attribute__((used)) static unsigned FUNC4(int iOfst){
  unsigned char *pHdr = FUNC3(64, iOfst);
  unsigned nPage;
  FUNC2("Header at offset %d:\n", iOfst);
  FUNC1(pHdr, 0, 4, "Header part 1 (3654616569)");
  FUNC1(pHdr, 4, 4, "Header part 2 (547447767)");
  nPage =
  FUNC1(pHdr, 8, 4, "page count");
  cksumNonce =
  FUNC1(pHdr, 12, 4, "chksum nonce");
  FUNC1(pHdr, 16, 4, "initial database size in pages");
  sectorSize =
  FUNC1(pHdr, 20, 4, "sector size");
  pageSize =
  FUNC1(pHdr, 24, 4, "page size");
  FUNC1(pHdr, 28, 4, "zero");
  FUNC1(pHdr, 32, 4, "zero");
  FUNC1(pHdr, 36, 4, "zero");
  FUNC1(pHdr, 40, 4, "zero");
  FUNC0(pHdr);
  return nPage;
}