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
typedef  int /*<<< orphan*/  aBuf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 size_t FUNC3 (unsigned char*,int,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned int,unsigned char*) ; 

__attribute__((used)) static void FUNC7(const char *zFilename){
  FILE *in = FUNC1(zFilename, "rb");
  unsigned pgsz;
  size_t got;
  unsigned n;
  unsigned char aBuf[50];
  unsigned char aPage[65536];

  if( in==0 ){
    FUNC2(stderr, "cannot open \"%s\"\n", zFilename);
    return;
  }
  got = FUNC3(aBuf, 1, sizeof(aBuf), in);
  if( got!=sizeof(aBuf) ){
    goto endComputeSigs;
  }
  pgsz = aBuf[16]*256 + aBuf[17];
  if( pgsz==1 ) pgsz = 65536;
  if( (pgsz & (pgsz-1))!=0 ){
    FUNC2(stderr, "invalid page size: %02x%02x\n", aBuf[16], aBuf[17]);
    goto endComputeSigs;
  }
  FUNC5(in);
  for(n=1; (got=FUNC3(aPage, 1, pgsz, in))==pgsz; n++){
    FUNC6(aPage, pgsz, aBuf);
    FUNC4("%4d: %s\n", n, aBuf);
  }

endComputeSigs:
  FUNC0(in);
}