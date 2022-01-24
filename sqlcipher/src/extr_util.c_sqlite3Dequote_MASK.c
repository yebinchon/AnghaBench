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
 int /*<<< orphan*/  FUNC1 (char) ; 

void FUNC2(char *z){
  char quote;
  int i, j;
  if( z==0 ) return;
  quote = z[0];
  if( !FUNC1(quote) ) return;
  if( quote=='[' ) quote = ']';
  for(i=1, j=0;; i++){
    FUNC0( z[i] );
    if( z[i]==quote ){
      if( z[i+1]==quote ){
        z[j++] = quote;
        i++;
      }else{
        break;
      }
    }else{
      z[j++] = z[i];
    }
  }
  z[j] = 0;
}