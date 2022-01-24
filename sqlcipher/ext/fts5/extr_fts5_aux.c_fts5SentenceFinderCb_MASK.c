#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ iPos; char* zDoc; } ;
typedef  TYPE_1__ Fts5SFinder ;

/* Variables and functions */
 int FTS5_TOKEN_COLOCATED ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int) ; 
 int FUNC2 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static int FUNC3(
  void *pContext,                 /* Pointer to HighlightContext object */
  int tflags,                     /* Mask of FTS5_TOKEN_* flags */
  const char *pToken,             /* Buffer containing token */
  int nToken,                     /* Size of token in bytes */
  int iStartOff,                  /* Start offset of token */
  int iEndOff                     /* End offset of token */
){
  int rc = SQLITE_OK;

  FUNC1(pToken, nToken);
  FUNC0(iEndOff);

  if( (tflags & FTS5_TOKEN_COLOCATED)==0 ){
    Fts5SFinder *p = (Fts5SFinder*)pContext;
    if( p->iPos>0 ){
      int i;
      char c = 0;
      for(i=iStartOff-1; i>=0; i--){
        c = p->zDoc[i];
        if( c!=' ' && c!='\t' && c!='\n' && c!='\r' ) break;
      }
      if( i!=iStartOff-1 && (c=='.' || c==':') ){
        rc = FUNC2(p, p->iPos);
      }
    }else{
      rc = FUNC2(p, 0);
    }
    p->iPos++;
  }
  return rc;
}