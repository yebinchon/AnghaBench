
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* p; int n; } ;
typedef TYPE_1__ Fts5Token ;
typedef int Fts5Parse ;


 int FTS5_AND ;
 int FTS5_CARET ;
 int FTS5_COLON ;
 int FTS5_COMMA ;
 int FTS5_EOF ;
 int FTS5_LCP ;
 int FTS5_LP ;
 int FTS5_MINUS ;
 int FTS5_NOT ;
 int FTS5_OR ;
 int FTS5_PLUS ;
 int FTS5_RCP ;
 int FTS5_RP ;
 int FTS5_STAR ;
 int FTS5_STRING ;
 scalar_t__ fts5ExprIsspace (char const) ;
 int memcmp (char const*,char*,int) ;
 int sqlite3Fts5IsBareword (char const) ;
 int sqlite3Fts5ParseError (int *,char*,...) ;

__attribute__((used)) static int fts5ExprGetToken(
  Fts5Parse *pParse,
  const char **pz,
  Fts5Token *pToken
){
  const char *z = *pz;
  int tok;


  while( fts5ExprIsspace(*z) ) z++;

  pToken->p = z;
  pToken->n = 1;
  switch( *z ){
    case '(': tok = FTS5_LP; break;
    case ')': tok = FTS5_RP; break;
    case '{': tok = FTS5_LCP; break;
    case '}': tok = FTS5_RCP; break;
    case ':': tok = FTS5_COLON; break;
    case ',': tok = FTS5_COMMA; break;
    case '+': tok = FTS5_PLUS; break;
    case '*': tok = FTS5_STAR; break;
    case '-': tok = FTS5_MINUS; break;
    case '^': tok = FTS5_CARET; break;
    case '\0': tok = FTS5_EOF; break;

    case '"': {
      const char *z2;
      tok = FTS5_STRING;

      for(z2=&z[1]; 1; z2++){
        if( z2[0]=='"' ){
          z2++;
          if( z2[0]!='"' ) break;
        }
        if( z2[0]=='\0' ){
          sqlite3Fts5ParseError(pParse, "unterminated string");
          return FTS5_EOF;
        }
      }
      pToken->n = (z2 - z);
      break;
    }

    default: {
      const char *z2;
      if( sqlite3Fts5IsBareword(z[0])==0 ){
        sqlite3Fts5ParseError(pParse, "fts5: syntax error near \"%.1s\"", z);
        return FTS5_EOF;
      }
      tok = FTS5_STRING;
      for(z2=&z[1]; sqlite3Fts5IsBareword(*z2); z2++);
      pToken->n = (z2 - z);
      if( pToken->n==2 && memcmp(pToken->p, "OR", 2)==0 ) tok = FTS5_OR;
      if( pToken->n==3 && memcmp(pToken->p, "NOT", 3)==0 ) tok = FTS5_NOT;
      if( pToken->n==3 && memcmp(pToken->p, "AND", 3)==0 ) tok = FTS5_AND;
      break;
    }
  }

  *pz = &pToken->p[pToken->n];
  return tok;
}
