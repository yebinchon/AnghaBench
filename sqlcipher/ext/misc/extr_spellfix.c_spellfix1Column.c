
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_context ;
struct TYPE_4__ {size_t iRow; int iLang; char* zPattern; int iTop; int iScope; int nSearch; TYPE_1__* a; scalar_t__ pFullScan; } ;
typedef TYPE_2__ spellfix1_cursor ;
struct TYPE_3__ {char* zWord; int iRank; int iDistance; int iScore; int iMatchlen; char* zHash; } ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int SQLITE_STATIC ;
 int editdist1 (char*,char*,int*) ;
 int sqlite3_column_value (scalar_t__,int) ;
 int sqlite3_free (char*) ;
 int sqlite3_result_int (int *,int) ;
 int sqlite3_result_null (int *) ;
 int sqlite3_result_text (int *,char*,int,int ) ;
 int sqlite3_result_value (int *,int ) ;
 scalar_t__ strlen (char*) ;
 int translen_to_charlen (char*,int,int) ;
 scalar_t__ transliterate (unsigned char*,int) ;
 int utf8Charlen (char*,int) ;

__attribute__((used)) static int spellfix1Column(
  sqlite3_vtab_cursor *cur,
  sqlite3_context *ctx,
  int i
){
  spellfix1_cursor *pCur = (spellfix1_cursor*)cur;
  if( pCur->pFullScan ){
    if( i<=136 ){
      sqlite3_result_value(ctx, sqlite3_column_value(pCur->pFullScan, i));
    }else{
      sqlite3_result_null(ctx);
    }
    return SQLITE_OK;
  }
  switch( i ){
    case 128: {
      sqlite3_result_text(ctx, pCur->a[pCur->iRow].zWord, -1, SQLITE_STATIC);
      break;
    }
    case 133: {
      sqlite3_result_int(ctx, pCur->a[pCur->iRow].iRank);
      break;
    }
    case 137: {
      sqlite3_result_int(ctx, pCur->a[pCur->iRow].iDistance);
      break;
    }
    case 136: {
      sqlite3_result_int(ctx, pCur->iLang);
      break;
    }
    case 131: {
      sqlite3_result_int(ctx, pCur->a[pCur->iRow].iScore);
      break;
    }
    case 135: {
      int iMatchlen = pCur->a[pCur->iRow].iMatchlen;
      if( iMatchlen<0 ){
        int nPattern = (int)strlen(pCur->zPattern);
        char *zWord = pCur->a[pCur->iRow].zWord;
        int nWord = (int)strlen(zWord);

        if( nPattern>0 && pCur->zPattern[nPattern-1]=='*' ){
          char *zTranslit;
          int res;
          zTranslit = (char *)transliterate((unsigned char *)zWord, nWord);
          if( !zTranslit ) return SQLITE_NOMEM;
          res = editdist1(pCur->zPattern, zTranslit, &iMatchlen);
          sqlite3_free(zTranslit);
          if( res<0 ) return SQLITE_NOMEM;
          iMatchlen = translen_to_charlen(zWord, nWord, iMatchlen);
        }else{
          iMatchlen = utf8Charlen(zWord, nWord);
        }
      }

      sqlite3_result_int(ctx, iMatchlen);
      break;
    }
    case 134: {
      sqlite3_result_text(ctx, pCur->a[pCur->iRow].zHash, -1, SQLITE_STATIC);
      break;
    }
    case 129: {
      sqlite3_result_int(ctx, pCur->iTop);
      break;
    }
    case 132: {
      sqlite3_result_int(ctx, pCur->iScope);
      break;
    }
    case 130: {
      sqlite3_result_int(ctx, pCur->nSearch);
      break;
    }
    default: {
      sqlite3_result_null(ctx);
      break;
    }
  }
  return SQLITE_OK;
}
