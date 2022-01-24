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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 (void const*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC5(const char *zFilename, const void *pData, int nData){
  FILE *out;
  int n;
  out = FUNC2(zFilename, "wb");
  if( out==0 ){
    FUNC3(stderr, "cannot open \"%s\" for writing\n", zFilename);
    FUNC0(1);
  }
  n = (int)FUNC4(pData, 1, nData, out);
  FUNC1(out);
  if( n!=nData ){
    FUNC3(stderr, "only wrote %d of %d bytes to \"%s\"\n",n,nData,zFilename);
    FUNC0(1);
  }
}