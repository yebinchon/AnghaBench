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
 int FUNC0 (int,char**) ; 
 int FUNC1 (int,char**) ; 
 int FUNC2 (int,char**) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int,char**) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

int FUNC6(int argc, char **argv){
  if( argc<3 ) FUNC3();
  if( FUNC5(argv[1],"init")==0 ){
    return FUNC1(argc, argv);
  }
  if( FUNC5(argv[1],"export")==0 ){
    return FUNC0(argc, argv);
  }
  if( FUNC5(argv[1],"run")==0 ){
    return FUNC2(argc, argv);
  }
  if( FUNC5(argv[1],"stat")==0 ){
    return FUNC4(argc, argv);
  }
  FUNC3();
  return 0;
}