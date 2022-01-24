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
typedef  int /*<<< orphan*/  zBuf ;
typedef  int /*<<< orphan*/  SHA3Context ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 scalar_t__ FUNC6 (char*,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(const char *zFilename, int iSize, char *pCksum){
  FILE *in;
  SHA3Context ctx;
  char zBuf[10240];

  in = FUNC5(zFilename,"rb");
  if( in==0 ){
    return 1;
  }
  FUNC2(&ctx, iSize);
  for(;;){
    int n = (int)FUNC6(zBuf, 1, sizeof(zBuf), in);
    if( n<=0 ) break;
    FUNC3(&ctx, (unsigned char*)zBuf, (unsigned)n);
  }
  FUNC4(in);
  FUNC0(FUNC1(&ctx), pCksum, iSize/8);
  return 0;
}