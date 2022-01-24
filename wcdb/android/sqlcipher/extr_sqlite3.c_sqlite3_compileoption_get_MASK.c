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
 char** FUNC0 (int*) ; 

const char *FUNC1(int N){
  int nOpt;
  const char **azCompileOpt;
  azCompileOpt = FUNC0(&nOpt);
  if( N>=0 && N<nOpt ){
    return azCompileOpt[N];
  }
  return 0;
}