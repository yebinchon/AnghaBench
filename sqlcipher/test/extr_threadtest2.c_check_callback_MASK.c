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
 int all_stop ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC1 (char*,char*) ; 

int FUNC2(void *pid, int argc, char **argv, char **notUsed2){
  int id = (int)pid;
  if( FUNC1(argv[0],"ok") ){
    all_stop = 1;
    FUNC0(stderr,"%d: %s\n", id, argv[0]);
  }else{
    /* fprintf(stderr,"%d: OK\n", id); */
  }
  return 0;
}