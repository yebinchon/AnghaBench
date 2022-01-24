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
typedef  int /*<<< orphan*/  y ;
typedef  int /*<<< orphan*/  x ;
struct rlimit {scalar_t__ rlim_cur; scalar_t__ rlim_max; } ;

/* Variables and functions */
 int RLIMIT_AS ; 
 int RLIMIT_DATA ; 
 int RLIMIT_STACK ; 
 scalar_t__ FUNC0 (char*) ; 
 int bVdbeDebug ; 
 int eVerbosity ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC4 (struct rlimit*,int /*<<< orphan*/ ,int) ; 
 void* mxCb ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 void* FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* szMax ; 

int FUNC11(int *pArgc, char ***pArgv){
  int i, j, n;
  int argc = *pArgc;
  char **argv = *pArgv;
  for(i=j=1; i<argc; i++){
    char *z = argv[i];
    if( z[0]=='-' ){
      z++;
      if( z[0]=='-' ) z++;
      if( z[0]=='v' && (n = FUNC5(z))>0 ){
        eVerbosity += n;
        continue;
      }
      if( FUNC9(z,"vdbe-debug")==0 ){
        bVdbeDebug = 1;
        continue;
      }
      if( FUNC9(z,"limit")==0 ){
        if( i+1==argc ){
          FUNC2(stderr, "missing argument to %s\n", argv[i]);
          FUNC1(1);
        }
        mxCb = FUNC10(argv[++i], 0, 0);
        continue;
      }
      if( FUNC9(z,"memtrace")==0 ){
        FUNC8(stdout);
        continue;
      }
      if( FUNC9(z,"mem")==0 ){
        bVdbeDebug = 1;
        continue;
      }
      if( FUNC9(z,"max-db-size")==0 ){
        if( i+1==argc ){
          FUNC2(stderr, "missing argument to %s\n", argv[i]);
          FUNC1(1);
        }
        szMax = FUNC10(argv[++i], 0, 0);
        continue;
      }
#ifndef _WIN32
      if( FUNC9(z,"max-stack")==0
       || FUNC9(z,"max-data")==0
       || FUNC9(z,"max-as")==0
      ){
        struct rlimit x,y;
        int resource = RLIMIT_STACK;
        char *zType = "RLIMIT_STACK";
        if( i+1==argc ){
          FUNC2(stderr, "missing argument to %s\n", argv[i]);
          FUNC1(1);
        }
        if( z[4]=='d' ){
          resource = RLIMIT_DATA;
          zType = "RLIMIT_DATA";
        }
        if( z[4]=='a' ){
          resource = RLIMIT_AS;
          zType = "RLIMIT_AS";
        }
        FUNC4(&x,0,sizeof(x));
        FUNC3(resource, &x);
        y.rlim_cur = FUNC0(argv[++i]);
        y.rlim_max = x.rlim_cur;
        FUNC7(resource, &y);
        FUNC4(&y,0,sizeof(y));
        FUNC3(resource, &y);
        FUNC6("%s changed from %d to %d\n", 
               zType, (int)x.rlim_cur, (int)y.rlim_cur);
        continue;
      }
#endif /* _WIN32 */
    }
    argv[j++] = argv[i];
  }
  argv[j] = 0;
  *pArgc = j;
  return 0;
}