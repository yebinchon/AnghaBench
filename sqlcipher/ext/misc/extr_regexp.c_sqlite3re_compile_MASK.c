#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {unsigned char* z; int i; int mx; } ;
struct TYPE_12__ {scalar_t__* aOp; unsigned int* aArg; unsigned char* zInit; int nInit; char const* zErr; TYPE_1__ sIn; int /*<<< orphan*/  xNextChar; } ;
typedef  TYPE_2__ ReCompiled ;

/* Variables and functions */
 int /*<<< orphan*/  RE_EOF ; 
 scalar_t__ RE_OP_ACCEPT ; 
 scalar_t__ RE_OP_ANYSTAR ; 
 scalar_t__ RE_OP_MATCH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 char FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  re_next_char ; 
 int /*<<< orphan*/  re_next_char_nocase ; 
 scalar_t__ FUNC4 (TYPE_2__*,int) ; 
 char* FUNC5 (TYPE_2__*) ; 
 TYPE_2__* FUNC6 (int) ; 
 scalar_t__ FUNC7 (char const*) ; 

const char *FUNC8(ReCompiled **ppRe, const char *zIn, int noCase){
  ReCompiled *pRe;
  const char *zErr;
  int i, j;

  *ppRe = 0;
  pRe = FUNC6( sizeof(*pRe) );
  if( pRe==0 ){
    return "out of memory";
  }
  FUNC0(pRe, 0, sizeof(*pRe));
  pRe->xNextChar = noCase ? re_next_char_nocase : re_next_char;
  if( FUNC4(pRe, 30) ){
    FUNC3(pRe);
    return "out of memory";
  }
  if( zIn[0]=='^' ){
    zIn++;
  }else{
    FUNC2(pRe, RE_OP_ANYSTAR, 0);
  }
  pRe->sIn.z = (unsigned char*)zIn;
  pRe->sIn.i = 0;
  pRe->sIn.mx = (int)FUNC7(zIn);
  zErr = FUNC5(pRe);
  if( zErr ){
    FUNC3(pRe);
    return zErr;
  }
  if( FUNC1(pRe)=='$' && pRe->sIn.i+1>=pRe->sIn.mx ){
    FUNC2(pRe, RE_OP_MATCH, RE_EOF);
    FUNC2(pRe, RE_OP_ACCEPT, 0);
    *ppRe = pRe;
  }else if( pRe->sIn.i>=pRe->sIn.mx ){
    FUNC2(pRe, RE_OP_ACCEPT, 0);
    *ppRe = pRe;
  }else{
    FUNC3(pRe);
    return "unrecognized character";
  }

  /* The following is a performance optimization.  If the regex begins with
  ** ".*" (if the input regex lacks an initial "^") and afterwards there are
  ** one or more matching characters, enter those matching characters into
  ** zInit[].  The re_match() routine can then search ahead in the input 
  ** string looking for the initial match without having to run the whole
  ** regex engine over the string.  Do not worry able trying to match
  ** unicode characters beyond plane 0 - those are very rare and this is
  ** just an optimization. */
  if( pRe->aOp[0]==RE_OP_ANYSTAR ){
    for(j=0, i=1; j<sizeof(pRe->zInit)-2 && pRe->aOp[i]==RE_OP_MATCH; i++){
      unsigned x = pRe->aArg[i];
      if( x<=127 ){
        pRe->zInit[j++] = (unsigned char)x;
      }else if( x<=0xfff ){
        pRe->zInit[j++] = (unsigned char)(0xc0 | (x>>6));
        pRe->zInit[j++] = 0x80 | (x&0x3f);
      }else if( x<=0xffff ){
        pRe->zInit[j++] = (unsigned char)(0xd0 | (x>>12));
        pRe->zInit[j++] = 0x80 | ((x>>6)&0x3f);
        pRe->zInit[j++] = 0x80 | (x&0x3f);
      }else{
        break;
      }
    }
    if( j>0 && pRe->zInit[j-1]==0 ) j--;
    pRe->nInit = j;
  }
  return pRe->zErr;
}