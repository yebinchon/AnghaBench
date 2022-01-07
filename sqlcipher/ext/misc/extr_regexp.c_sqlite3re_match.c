
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int aSpace ;
struct TYPE_9__ {int nInit; unsigned char* zInit; int nState; int (* xNextChar ) (TYPE_2__*) ;int* aOp; int* aArg; } ;
struct TYPE_8__ {unsigned char const* z; int i; int mx; } ;
struct TYPE_7__ {int* aState; unsigned int nState; } ;
typedef TYPE_1__ ReStateSet ;
typedef int ReStateNumber ;
typedef TYPE_2__ ReInput ;
typedef TYPE_3__ ReCompiled ;


 int RE_EOF ;






 int RE_OP_CC_VALUE ;
 int re_add_state (TYPE_1__*,int) ;
 int re_digit_char (int) ;
 int re_space_char (int) ;
 int re_word_char (int) ;
 int sqlite3_free (int*) ;
 int* sqlite3_malloc64 (int) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static int re_match(ReCompiled *pRe, const unsigned char *zIn, int nIn){
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
  in.mx = nIn>=0 ? nIn : (int)strlen((char const*)zIn);


  if( pRe->nInit ){
    unsigned char x = pRe->zInit[0];
    while( in.i+pRe->nInit<=in.mx
     && (zIn[in.i]!=x ||
         strncmp((const char*)zIn+in.i, (const char*)pRe->zInit, pRe->nInit)!=0)
    ){
      in.i++;
    }
    if( in.i+pRe->nInit>in.mx ) return 0;
  }

  if( pRe->nState<=(sizeof(aSpace)/(sizeof(aSpace[0])*2)) ){
    pToFree = 0;
    aStateSet[0].aState = aSpace;
  }else{
    pToFree = sqlite3_malloc64( sizeof(ReStateNumber)*2*pRe->nState );
    if( pToFree==0 ) return -1;
    aStateSet[0].aState = pToFree;
  }
  aStateSet[1].aState = &aStateSet[0].aState[pRe->nState];
  pNext = &aStateSet[1];
  pNext->nState = 0;
  re_add_state(pNext, 0);
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
        case 133: {
          if( pRe->aArg[x]==c ) re_add_state(pNext, x+1);
          break;
        }
        case 141: {
          re_add_state(pNext, x+1);
          break;
        }
        case 128: {
          if( re_word_char(c) ) re_add_state(pNext, x+1);
          break;
        }
        case 130: {
          if( !re_word_char(c) ) re_add_state(pNext, x+1);
          break;
        }
        case 136: {
          if( re_digit_char(c) ) re_add_state(pNext, x+1);
          break;
        }
        case 132: {
          if( !re_digit_char(c) ) re_add_state(pNext, x+1);
          break;
        }
        case 129: {
          if( re_space_char(c) ) re_add_state(pNext, x+1);
          break;
        }
        case 131: {
          if( !re_space_char(c) ) re_add_state(pNext, x+1);
          break;
        }
        case 139: {
          if( re_word_char(c)!=re_word_char(cPrev) ) re_add_state(pThis, x+1);
          break;
        }
        case 140: {
          re_add_state(pNext, x);
          re_add_state(pThis, x+1);
          break;
        }
        case 135: {
          re_add_state(pThis, x+pRe->aArg[x]);
          re_add_state(pThis, x+1);
          break;
        }
        case 134: {
          re_add_state(pThis, x+pRe->aArg[x]);
          break;
        }
        case 142: {
          rc = 1;
          goto re_match_end;
        }
        case 137:
        case 138: {
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
          if( pRe->aOp[x]==138 ) hit = !hit;
          if( hit ) re_add_state(pNext, x+n);
          break;
        }
      }
    }
  }
  for(i=0; i<pNext->nState; i++){
    if( pRe->aOp[pNext->aState[i]]==142 ){ rc = 1; break; }
  }
re_match_end:
  sqlite3_free(pToFree);
  return rc;
}
