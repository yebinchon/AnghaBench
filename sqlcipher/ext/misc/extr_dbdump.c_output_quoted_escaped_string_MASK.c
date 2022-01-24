#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  pArg; int /*<<< orphan*/  (* xCallback ) (char*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ DState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (char const*,char*,char*,char*) ; 

__attribute__((used)) static void FUNC9(DState *p, const char *z){
  int i;
  char c;
  for(i=0; (c = z[i])!=0 && c!='\'' && c!='\n' && c!='\r'; i++){}
  if( c==0 ){
    FUNC0(p,"'%s'",z);
  }else{
    const char *zNL = 0;
    const char *zCR = 0;
    int nNL = 0;
    int nCR = 0;
    char zBuf1[20], zBuf2[20];
    for(i=0; z[i]; i++){
      if( z[i]=='\n' ) nNL++;
      if( z[i]=='\r' ) nCR++;
    }
    if( nNL ){
      p->xCallback("replace(", p->pArg);
      zNL = FUNC8(z, "\\n", "\\012", zBuf1);
    }
    if( nCR ){
      p->xCallback("replace(", p->pArg);
      zCR = FUNC8(z, "\\r", "\\015", zBuf2);
    }
    p->xCallback("'", p->pArg);
    while( *z ){
      for(i=0; (c = z[i])!=0 && c!='\n' && c!='\r' && c!='\''; i++){}
      if( c=='\'' ) i++;
      if( i ){
        FUNC0(p, "%.*s", i, z);
        z += i;
      }
      if( c=='\'' ){
        p->xCallback("'", p->pArg);
        continue;
      }
      if( c==0 ){
        break;
      }
      z++;
      if( c=='\n' ){
        p->xCallback(zNL, p->pArg);
        continue;
      }
      p->xCallback(zCR, p->pArg);
    }
    p->xCallback("'", p->pArg);
    if( nCR ){
      FUNC0(p, ",'%s',char(13))", zCR);
    }
    if( nNL ){
      FUNC0(p, ",'%s',char(10))", zNL);
    }
  }
}