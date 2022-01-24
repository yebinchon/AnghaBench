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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 char* outputDir ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC5(char *z){
  outputDir = (char *) FUNC4( FUNC2(z)+1 );
  if( outputDir==0 ){
    FUNC1(stderr,"out of memory\n");
    FUNC0(1);
  }
  FUNC3(outputDir, z);
}