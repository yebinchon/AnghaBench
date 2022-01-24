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
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ fd ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC8(int argc, char **argv){
  unsigned char *aData;
  if( argc<2 ){
    FUNC2(stderr,"Usage: %s FILENAME\n", argv[0]);
    FUNC1(1);
  }
  fd = FUNC5(argv[1], O_RDONLY);
  if( fd<0 ){
    FUNC2(stderr,"%s: can't open %s\n", argv[0], argv[1]);
    FUNC1(1);
  }
  aData = FUNC4(0, 136);
  FUNC7(aData, 0);
  FUNC7(aData, 1);
  FUNC6(aData);
  FUNC3(aData);
  FUNC0(fd);
  return 0;
}