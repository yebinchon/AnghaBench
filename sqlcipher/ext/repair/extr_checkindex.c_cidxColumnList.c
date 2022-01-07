
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t bDesc; int bKey; int zExpr; } ;
struct TYPE_4__ {int nCol; TYPE_2__* aCol; } ;
typedef TYPE_1__ CidxIndex ;
typedef TYPE_2__ CidxColumn ;


 int CIDX_CLIST_ALL ;




 int SQLITE_OK ;
 int assert (int) ;
 char* cidxMprintf (int*,char*,char*,char const*,int,...) ;

__attribute__((used)) static char *cidxColumnList(
  int *pRc,
  const char *zIdx,
  CidxIndex *pIdx,
  int eType
){
  char *zRet = 0;
  if( *pRc==SQLITE_OK ){
    const char *aDir[2] = {"", " DESC"};
    int i;
    const char *zSep = "";

    for(i=0; i<pIdx->nCol; i++){
      CidxColumn *p = &pIdx->aCol[i];
      assert( pIdx->aCol[i].bDesc==0 || pIdx->aCol[i].bDesc==1 );
      switch( eType ){

        case 130:
          zRet = cidxMprintf(pRc, "%z%s%d%s", zRet, zSep, i+1, aDir[p->bDesc]);
          zSep = ",";
          break;

        case 131:
          zRet = cidxMprintf(pRc, "%z%squote(i%d)", zRet, zSep, i);
          zSep = "||','||";
          break;

        case 128:
          if( p->bKey==0 ){
            zRet = cidxMprintf(pRc, "%z%s%s IS i.i%d", zRet,
                zSep, p->zExpr, i
            );
            zSep = " AND ";
          }
          break;

        case 129:
          if( p->bKey==1 ){
            zRet = cidxMprintf(pRc, "%z%s%s IS i.i%d", zRet,
                zSep, p->zExpr, i
            );
            zSep = " AND ";
          }
          break;

        default:
          assert( eType==CIDX_CLIST_ALL );
          zRet = cidxMprintf(pRc, "%z%s(%s) AS i%d", zRet, zSep, p->zExpr, i);
          zSep = ", ";
          break;
      }
    }
  }

  return zRet;
}
