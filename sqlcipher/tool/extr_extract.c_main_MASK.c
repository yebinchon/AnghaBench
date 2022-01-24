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
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 size_t FUNC4 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

int FUNC8(int argc, char **argv){
  FILE *f;
  char *zBuf;
  int ofst;
  int n;
  size_t got;

  if( argc!=4 ){
    FUNC3(stderr, "Usage: %s FILENAME OFFSET AMOUNT\n", *argv);
    return 1;
  }
  f = FUNC2(argv[1], "rb");
  if( f==0 ){
    FUNC3(stderr, "cannot open \"%s\"\n", argv[1]);
    return 1;
  }
  ofst = FUNC0(argv[2]);
  n = FUNC0(argv[3]);
  zBuf = FUNC7( n );
  if( zBuf==0 ){
    FUNC3(stderr, "out of memory\n");
    return 1;
  }
  FUNC5(f, ofst, SEEK_SET);
  got = FUNC4(zBuf, 1, n, f);
  FUNC1(f);
  if( got<n ){
    FUNC3(stderr, "got only %d of %d bytes\n", got, n);
    return 1;
  }else{
    FUNC6(zBuf, 1, n, stdout);
  }
  return 0;
}