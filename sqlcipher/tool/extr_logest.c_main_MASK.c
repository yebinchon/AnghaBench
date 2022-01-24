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
typedef  int sqlite3_uint64 ;
typedef  int LogEst ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int,int) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char const*,char*) ; 

int FUNC12(int argc, char **argv){
  int i;
  int n = 0;
  LogEst a[100];
  for(i=1; i<argc; i++){
    const char *z = argv[i];
    if( FUNC11(z,"+")==0 ){
      if( n>=2 ){
        a[n-2] = FUNC4(a[n-2],a[n-1]);
        n--;
      }
    }else if( FUNC11(z,"x")==0 ){
      if( n>=2 ){
        a[n-2] = FUNC7(a[n-2],a[n-1]);
        n--;
      }
    }else if( FUNC11(z,"dup")==0 ){
      if( n>0 ){
        a[n] = a[n-1];
        n++;
      }
    }else if( FUNC11(z,"log")==0 ){
      if( n>0 ) a[n-1] = FUNC6(a[n-1]) - 33;
    }else if( FUNC11(z,"nlogn")==0 ){
      if( n>0 ) a[n-1] += FUNC6(a[n-1]) - 33;
    }else if( FUNC11(z,"inv")==0 ){
      if( n>0 ) a[n-1] = -a[n-1];
    }else if( z[0]=='^' ){
      a[n++] = (LogEst)FUNC1(z+1);
    }else if( FUNC3(z) ){
      a[n++] = FUNC6(FUNC1(z));
    }else if( FUNC2(z) && z[0]!='-' ){
      a[n++] = FUNC5(FUNC0(z));
    }else{
      FUNC10(argv[0]);
    }
  }
  for(i=n-1; i>=0; i--){
    if( a[i]<-40 ){
      FUNC9("%5d (%f)\n", a[i], 1.0/(double)FUNC8(-a[i]));
    }else if( a[i]<10 ){
      FUNC9("%5d (%f)\n", a[i], FUNC8(a[i]+100)/1024.0);
    }else{
      sqlite3_uint64 x = FUNC8(a[i]+100)*100/1024;
      FUNC9("%5d (%lld.%02lld)\n", a[i], x/100, x%100);
    }
  }
  return 0;
}