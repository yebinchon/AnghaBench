#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  aSpace ;
struct TYPE_9__ {int nInit; unsigned char* zInit; int nState; int (* xNextChar ) (TYPE_2__*) ;int* aOp; int* aArg; } ;
struct TYPE_8__ {unsigned char const* z; int i; int mx; } ;
struct TYPE_7__ {int* aState; unsigned int nState; } ;
typedef  TYPE_1__ ReStateSet ;
typedef  int ReStateNumber ;
typedef  TYPE_2__ ReInput ;
typedef  TYPE_3__ ReCompiled ;

/* Variables and functions */
 int RE_EOF ; 
#define  RE_OP_ACCEPT 142 
#define  RE_OP_ANY 141 
#define  RE_OP_ANYSTAR 140 
#define  RE_OP_BOUNDARY 139 
#define  RE_OP_CC_EXC 138 
#define  RE_OP_CC_INC 137 
 int RE_OP_CC_VALUE ; 
#define  RE_OP_DIGIT 136 
#define  RE_OP_FORK 135 
#define  RE_OP_GOTO 134 
#define  RE_OP_MATCH 133 
#define  RE_OP_NOTDIGIT 132 
#define  RE_OP_NOTSPACE 131 
#define  RE_OP_NOTWORD 130 
#define  RE_OP_SPACE 129 
#define  RE_OP_WORD 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int* FUNC5 (int) ; 
 scalar_t__ FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char const*,char const*,int) ; 
 int FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC9(ReCompiled *pRe, const unsigned char *zIn, int nIn){
  ReStateSet aStateSet[2], *pThis, *pNext;
  ReStateNumber aSpace[100];
  ReStateNumber *pToFree;
  unsigned int i = 0;
  unsigned int iSwap = 0;
  int c = RE_EOF+1;
  int cPrev = 0;
  int rc = 0;
  ReInput in;

  in.z = zIn;
  in.i = 0;
  in.mx = nIn>=0 ? nIn : (int)FUNC6((char const*)zIn);

  /* Look for the initial prefix match, if there is one. */
  if( pRe->nInit ){
    unsigned char x = pRe->zInit[0];
    while( in.i+pRe->nInit<=in.mx 
     && (zIn[in.i]!=x ||
         FUNC7((const char*)zIn+in.i, (const char*)pRe->zInit, pRe->nInit)!=0)
    ){
      in.i++;
    }
    if( in.i+pRe->nInit>in.mx ) return 0;
  }

  if( pRe->nState<=(sizeof(aSpace)/(sizeof(aSpace[0])*2)) ){
    pToFree = 0;
    aStateSet[0].aState = aSpace;
  }else{
    pToFree = FUNC5( sizeof(ReStateNumber)*2*pRe->nState );
    if( pToFree==0 ) return -1;
    aStateSet[0].aState = pToFree;
  }
  aStateSet[1].aState = &aStateSet[0].aState[pRe->nState];
  pNext = &aStateSet[1];
  pNext->nState = 0;
  FUNC0(pNext, 0);
  while( c!=RE_EOF && pNext->nState>0 ){
    cPrev = c;
    c = pRe->xNextChar(&in);
    pThis = pNext;
    pNext = &aStateSet[iSwap];
    iSwap = 1 - iSwap;
    pNext->nState = 0;
    for(i=0; i<pThis->nState; i++){
      int x = pThis->aState[i];
      switch( pRe->aOp[x] ){
        case RE_OP_MATCH: {
          if( pRe->aArg[x]==c ) FUNC0(pNext, x+1);
          break;
        }
        case RE_OP_ANY: {
          FUNC0(pNext, x+1);
          break;
        }
        case RE_OP_WORD: {
          if( FUNC3(c) ) FUNC0(pNext, x+1);
          break;
        }
        case RE_OP_NOTWORD: {
          if( !FUNC3(c) ) FUNC0(pNext, x+1);
          break;
        }
        case RE_OP_DIGIT: {
          if( FUNC1(c) ) FUNC0(pNext, x+1);
          break;
        }
        case RE_OP_NOTDIGIT: {
          if( !FUNC1(c) ) FUNC0(pNext, x+1);
          break;
        }
        case RE_OP_SPACE: {
          if( FUNC2(c) ) FUNC0(pNext, x+1);
          break;
        }
        case RE_OP_NOTSPACE: {
          if( !FUNC2(c) ) FUNC0(pNext, x+1);
          break;
        }
        case RE_OP_BOUNDARY: {
          if( FUNC3(c)!=FUNC3(cPrev) ) FUNC0(pThis, x+1);
          break;
        }
        case RE_OP_ANYSTAR: {
          FUNC0(pNext, x);
          FUNC0(pThis, x+1);
          break;
        }
        case RE_OP_FORK: {
          FUNC0(pThis, x+pRe->aArg[x]);
          FUNC0(pThis, x+1);
          break;
        }
        case RE_OP_GOTO: {
          FUNC0(pThis, x+pRe->aArg[x]);
          break;
        }
        case RE_OP_ACCEPT: {
          rc = 1;
          goto re_match_end;
        }
        case RE_OP_CC_INC:
        case RE_OP_CC_EXC: {
          int j = 1;
          int n = pRe->aArg[x];
          int hit = 0;
          for(j=1; j>0 && j<n; j++){
            if( pRe->aOp[x+j]==RE_OP_CC_VALUE ){
              if( pRe->aArg[x+j]==c ){
                hit = 1;
                j = -1;
              }
            }else{
              if( pRe->aArg[x+j]<=c && pRe->aArg[x+j+1]>=c ){
                hit = 1;
                j = -1;
              }else{
                j++;
              }
            }
          }
          if( pRe->aOp[x]==RE_OP_CC_EXC ) hit = !hit;
          if( hit ) FUNC0(pNext, x+n);
          break;            
        }
      }
    }
  }
  for(i=0; i<pNext->nState; i++){
    if( pRe->aOp[pNext->aState[i]]==RE_OP_ACCEPT ){ rc = 1; break; }
  }
re_match_end:
  FUNC4(pToFree);
  return rc;
}