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
struct s_options {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 char** argv ; 
 int /*<<< orphan*/ * errstream ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ *) ; 
 struct s_options* op ; 
 scalar_t__ FUNC5 (char*,char) ; 

int FUNC6(char **a, struct s_options *o, FILE *err)
{
  int errcnt = 0;
  argv = a;
  op = o;
  errstream = err;
  if( argv && *argv && op ){
    int i;
    for(i=1; argv[i]; i++){
      if( argv[i][0]=='+' || argv[i][0]=='-' ){
        errcnt += FUNC3(i,err);
      }else if( FUNC5(argv[i],'=') ){
        errcnt += FUNC4(i,err);
      }
    }
  }
  if( errcnt>0 ){
    FUNC2(err,"Valid command line options for \"%s\" are:\n",*a);
    FUNC0();
    FUNC1(1);
  }
  return 0;
}