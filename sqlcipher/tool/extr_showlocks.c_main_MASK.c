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
 int /*<<< orphan*/  MX_LCK ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC5(int argc, char **argv){
  int fd;
  int cnt;

  if( argc!=2 ){
    FUNC1(stderr, "Usage: %s FILENAME\n", argv[0]);
    return 1;
  }
  fd = FUNC2(argv[1], O_RDWR, 0);
  if( fd<0 ){
    FUNC1(stderr, "%s: cannot open %s\n", argv[0], argv[1]);
    return 1;
  }
  cnt = FUNC4(fd, 0, MX_LCK);
  if( cnt==0 ) FUNC3("no locks\n");  
  FUNC0(fd);
  return 0;
}