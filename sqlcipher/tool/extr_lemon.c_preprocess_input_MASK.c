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
 scalar_t__ FUNC0 (char) ; 
 char** azDefine ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (char*) ; 
 int nDefine ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 

__attribute__((used)) static void FUNC5(char *z){
  int i, j, k, n;
  int exclude = 0;
  int start = 0;
  int lineno = 1;
  int start_lineno = 1;
  for(i=0; z[i]; i++){
    if( z[i]=='\n' ) lineno++;
    if( z[i]!='%' || (i>0 && z[i-1]!='\n') ) continue;
    if( FUNC4(&z[i],"%endif",6)==0 && FUNC0(z[i+6]) ){
      if( exclude ){
        exclude--;
        if( exclude==0 ){
          for(j=start; j<i; j++) if( z[j]!='\n' ) z[j] = ' ';
        }
      }
      for(j=i; z[j] && z[j]!='\n'; j++) z[j] = ' ';
    }else if( (FUNC4(&z[i],"%ifdef",6)==0 && FUNC0(z[i+6]))
          || (FUNC4(&z[i],"%ifndef",7)==0 && FUNC0(z[i+7])) ){
      if( exclude ){
        exclude++;
      }else{
        for(j=i+7; FUNC0(z[j]); j++){}
        for(n=0; z[j+n] && !FUNC0(z[j+n]); n++){}
        exclude = 1;
        for(k=0; k<nDefine; k++){
          if( FUNC4(azDefine[k],&z[j],n)==0 && FUNC3(azDefine[k])==n ){
            exclude = 0;
            break;
          }
        }
        if( z[i+3]=='n' ) exclude = !exclude;
        if( exclude ){
          start = i;
          start_lineno = lineno;
        }
      }
      for(j=i; z[j] && z[j]!='\n'; j++) z[j] = ' ';
    }
  }
  if( exclude ){
    FUNC2(stderr,"unterminated %%ifdef starting on line %d\n", start_lineno);
    FUNC1(1);
  }
}