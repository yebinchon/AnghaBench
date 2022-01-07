
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef int fulltext_vtab ;
struct TYPE_6__ {int nTerms; TYPE_1__* pTerm; } ;
struct TYPE_5__ {int zTerm; scalar_t__ is_phrase; } ;
typedef TYPE_2__ Query ;
typedef int DocList ;


 int DL_DOCIDS ;
 int DL_POSITIONS ;
 int SQLITE_OK ;
 int docListDelete (int *) ;
 int * docListNew (int ) ;
 int parse_query (int *,char const*,TYPE_2__*) ;
 int query_free (TYPE_2__*) ;
 int query_merge (int *,int **,int ,int *,int,int *) ;
 int sqlite3_finalize (int *) ;

__attribute__((used)) static int fulltext_query(fulltext_vtab *v, const char *zQuery,
                          DocList **pResult){
  Query q;
  int phrase_start = -1;
  int i;
  sqlite3_stmt *pSelect = ((void*)0);
  DocList *d = ((void*)0);

  int rc = parse_query(v, zQuery, &q);
  if( rc!=SQLITE_OK ) return rc;


  for(i = 0 ; i < q.nTerms ; ++i){


    int need_positions = i<q.nTerms-1 && !q.pTerm[i+1].is_phrase;
    DocList *next = docListNew(need_positions ? DL_POSITIONS : DL_DOCIDS);
    if( q.pTerm[i].is_phrase ){
      phrase_start = i;
    }
    rc = query_merge(v, &pSelect, q.pTerm[i].zTerm, d, i - phrase_start, next);
    if( rc!=SQLITE_OK ) break;
    if( d!=((void*)0) ){
      docListDelete(d);
    }
    d = next;
  }

  sqlite3_finalize(pSelect);
  query_free(&q);
  *pResult = d;
  return rc;
}
