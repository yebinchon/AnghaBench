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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC4 (void*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC5(const char *zFilename, void *pBuf, int nBuf){
  FILE *f;
  f = FUNC2(zFilename, "wb");
  if( f==0 ){
    FUNC3(stderr, "cannot open \"%s\" for writing\n", zFilename);
    FUNC0(1);
  }
  if( FUNC4(pBuf, nBuf, 1, f)!=1 ){
    FUNC3(stderr, "cannot write to \"%s\"\n", zFilename);
    FUNC0(1);
  }
  FUNC1(f);
}