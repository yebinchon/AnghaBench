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
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 scalar_t__ FUNC3 (char*,int,long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (long) ; 

__attribute__((used)) static char *FUNC8(const char *zFilename){
  FILE *in = FUNC2(zFilename, "rb");
  long sz;
  char *z;
  if( in==0 ){
    FUNC0("cannot open \"%s\" for reading", zFilename);
  }
  FUNC4(in, 0, SEEK_END);
  sz = FUNC5(in);
  FUNC6(in);
  z = FUNC7( sz+1 );
  sz = (long)FUNC3(z, 1, sz, in);
  z[sz] = 0;
  FUNC1(in);
  return z;
}