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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 size_t FUNC4 (char*,int,long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static char *FUNC9(const char *zFilename){
  FILE *in;
  char *z;
  long n;
  size_t got;

  in = FUNC2(zFilename, "rb");
  if( in==0 ){
    FUNC3(stderr, "unable to open '%s' for reading\n", zFilename);
    FUNC0(1);
  }
  FUNC5(in, 0, SEEK_END);
  n = FUNC6(in);
  FUNC8(in);
  z = FUNC7( n+1 );
  if( z==0 ){
    FUNC3(stderr, "cannot allocate %d bytes to store '%s'\n", 
            (int)(n+1), zFilename);
    FUNC0(1);
  }
  got = FUNC4(z, 1, n, in);
  FUNC1(in);
  if( got!=(size_t)n ){
    FUNC3(stderr, "only read %d of %d bytes from '%s'\n",
           (int)got, (int)n, zFilename);
    FUNC0(1);
  }
  z[n] = 0;
  return z;
}