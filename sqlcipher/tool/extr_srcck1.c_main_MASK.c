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
 unsigned int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC4(int argc, char **argv){
  char *z;
  unsigned int nErr = 0;
  if( argc!=2 ){
    FUNC1(stderr, "Usage: %s FILENAME\n", argv[0]);
    return 1;
  }
  z = FUNC3(argv[1]);
  nErr = FUNC0(z);
  FUNC2(z);
  if( nErr ){
    FUNC1(stderr, "Found %u undesirable side-effects\n", nErr);
    return 1;
  }
  return 0; 
}