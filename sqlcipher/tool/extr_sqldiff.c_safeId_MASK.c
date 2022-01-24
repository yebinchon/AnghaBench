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
 int /*<<< orphan*/  FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int) ; 
 char* FUNC3 (char*,...) ; 

__attribute__((used)) static char *FUNC4(const char *zId){
  int i, x;
  char c;
  if( zId[0]==0 ) return FUNC3("\"\"");
  for(i=x=0; (c = zId[i])!=0; i++){
    if( !FUNC0(c) && c!='_' ){
      if( i>0 && FUNC1(c) ){
        x++;
      }else{
        return FUNC3("\"%w\"", zId);
      }
    }
  }
  if( x || !FUNC2(zId,i) ){
    return FUNC3("%s", zId);
  }
  return FUNC3("\"%w\"", zId);
}