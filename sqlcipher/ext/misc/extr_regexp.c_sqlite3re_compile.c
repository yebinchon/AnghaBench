
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {unsigned char* z; int i; int mx; } ;
struct TYPE_12__ {scalar_t__* aOp; unsigned int* aArg; unsigned char* zInit; int nInit; char const* zErr; TYPE_1__ sIn; int xNextChar; } ;
typedef TYPE_2__ ReCompiled ;


 int RE_EOF ;
 scalar_t__ RE_OP_ACCEPT ;
 scalar_t__ RE_OP_ANYSTAR ;
 scalar_t__ RE_OP_MATCH ;
 int memset (TYPE_2__*,int ,int) ;
 char rePeek (TYPE_2__*) ;
 int re_append (TYPE_2__*,scalar_t__,int ) ;
 int re_free (TYPE_2__*) ;
 int re_next_char ;
 int re_next_char_nocase ;
 scalar_t__ re_resize (TYPE_2__*,int) ;
 char* re_subcompile_re (TYPE_2__*) ;
 TYPE_2__* sqlite3_malloc (int) ;
 scalar_t__ strlen (char const*) ;

const char *re_compile(ReCompiled **ppRe, const char *zIn, int noCase){
  ReCompiled *pRe;
  const char *zErr;
  int i, j;

  *ppRe = 0;
  pRe = sqlite3_malloc( sizeof(*pRe) );
  if( pRe==0 ){
    return "out of memory";
  }
  memset(pRe, 0, sizeof(*pRe));
  pRe->xNextChar = noCase ? re_next_char_nocase : re_next_char;
  if( re_resize(pRe, 30) ){
    re_free(pRe);
    return "out of memory";
  }
  if( zIn[0]=='^' ){
    zIn++;
  }else{
    re_append(pRe, RE_OP_ANYSTAR, 0);
  }
  pRe->sIn.z = (unsigned char*)zIn;
  pRe->sIn.i = 0;
  pRe->sIn.mx = (int)strlen(zIn);
  zErr = re_subcompile_re(pRe);
  if( zErr ){
    re_free(pRe);
    return zErr;
  }
  if( rePeek(pRe)=='$' && pRe->sIn.i+1>=pRe->sIn.mx ){
    re_append(pRe, RE_OP_MATCH, RE_EOF);
    re_append(pRe, RE_OP_ACCEPT, 0);
    *ppRe = pRe;
  }else if( pRe->sIn.i>=pRe->sIn.mx ){
    re_append(pRe, RE_OP_ACCEPT, 0);
    *ppRe = pRe;
  }else{
    re_free(pRe);
    return "unrecognized character";
  }
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
