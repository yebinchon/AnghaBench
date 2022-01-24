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
struct TYPE_2__ {char* aBuf; int (* xToken ) (int /*<<< orphan*/ ,int,char*,int,int,int) ;int /*<<< orphan*/  pCtx; } ;
typedef  TYPE_1__ PorterContext ;

/* Variables and functions */
 int FTS5_PORTER_MAX_TOKEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int*) ; 
 scalar_t__ FUNC3 (char*,int*) ; 
 scalar_t__ FUNC4 (char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int*) ; 
 scalar_t__ FUNC8 (char*,int) ; 
 scalar_t__ FUNC9 (char*,int) ; 
 scalar_t__ FUNC10 (char*,int) ; 
 scalar_t__ FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int,char*,int,int,int) ; 
 int FUNC14 (int /*<<< orphan*/ ,int,char const*,int,int,int) ; 

__attribute__((used)) static int FUNC15(
  void *pCtx, 
  int tflags,
  const char *pToken, 
  int nToken, 
  int iStart, 
  int iEnd
){
  PorterContext *p = (PorterContext*)pCtx;

  char *aBuf;
  int nBuf;

  if( nToken>FTS5_PORTER_MAX_TOKEN || nToken<3 ) goto pass_through;
  aBuf = p->aBuf;
  nBuf = nToken;
  FUNC12(aBuf, pToken, nBuf);

  /* Step 1. */
  FUNC2(aBuf, &nBuf);
  if( FUNC3(aBuf, &nBuf) ){
    if( FUNC4(aBuf, &nBuf)==0 ){
      char c = aBuf[nBuf-1];
      if( FUNC1(c, 0)==0 
       && c!='l' && c!='s' && c!='z' && c==aBuf[nBuf-2] 
      ){
        nBuf--;
      }else if( FUNC8(aBuf, nBuf) && FUNC10(aBuf, nBuf) ){
        aBuf[nBuf++] = 'e';
      }
    }
  }

  /* Step 1C. */
  if( aBuf[nBuf-1]=='y' && FUNC11(aBuf, nBuf-1) ){
    aBuf[nBuf-1] = 'i';
  }

  /* Steps 2 through 4. */
  FUNC5(aBuf, &nBuf);
  FUNC6(aBuf, &nBuf);
  FUNC7(aBuf, &nBuf);

  /* Step 5a. */
  FUNC0( nBuf>0 );
  if( aBuf[nBuf-1]=='e' ){
    if( FUNC9(aBuf, nBuf-1) 
     || (FUNC8(aBuf, nBuf-1) && !FUNC10(aBuf, nBuf-1))
    ){
      nBuf--;
    }
  }

  /* Step 5b. */
  if( nBuf>1 && aBuf[nBuf-1]=='l' 
   && aBuf[nBuf-2]=='l' && FUNC9(aBuf, nBuf-1) 
  ){
    nBuf--;
  }

  return p->xToken(p->pCtx, tflags, aBuf, nBuf, iStart, iEnd);

 pass_through:
  return p->xToken(p->pCtx, tflags, pToken, nToken, iStart, iEnd);
}