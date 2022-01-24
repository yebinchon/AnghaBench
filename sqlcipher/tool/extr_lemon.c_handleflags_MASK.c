#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ label; scalar_t__ arg; scalar_t__ type; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ OPT_FFLAG ; 
 scalar_t__ OPT_FLAG ; 
 scalar_t__ OPT_FSTR ; 
 char** argv ; 
 char* emsg ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 TYPE_1__* op ; 
 scalar_t__ FUNC3 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 void FUNC4 (int) ; 
 void FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(int i, FILE *err)
{
  int v;
  int errcnt = 0;
  int j;
  for(j=0; op[j].label; j++){
    if( FUNC3(&argv[i][1],op[j].label,FUNC2(op[j].label))==0 ) break;
  }
  v = argv[i][0]=='-' ? 1 : 0;
  if( op[j].label==0 ){
    if( err ){
      FUNC1(err,"%sundefined option.\n",emsg);
      FUNC0(i,1,err);
    }
    errcnt++;
  }else if( op[j].arg==0 ){
    /* Ignore this option */
  }else if( op[j].type==OPT_FLAG ){
    *((int*)op[j].arg) = v;
  }else if( op[j].type==OPT_FFLAG ){
    (*(void(*)(int))(op[j].arg))(v);
  }else if( op[j].type==OPT_FSTR ){
    (*(void(*)(char *))(op[j].arg))(&argv[i][2]);
  }else{
    if( err ){
      FUNC1(err,"%smissing argument on switch.\n",emsg);
      FUNC0(i,1,err);
    }
    errcnt++;
  }
  return errcnt;
}