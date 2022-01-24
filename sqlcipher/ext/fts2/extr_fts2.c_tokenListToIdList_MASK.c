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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char) ; 

__attribute__((used)) static void FUNC2(char **azIn){
  int i, j;
  if( azIn ){
    for(i=0, j=-1; azIn[i]; i++){
      if( FUNC1(azIn[i][0]) || azIn[i][1] ){
        FUNC0(azIn[i]);
        if( j>=0 ){
          azIn[j] = azIn[i];
        }
        j++;
      }
    }
    azIn[j] = 0;
  }
}