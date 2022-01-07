
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct groupConcat {size_t nUsed; scalar_t__* z; } ;
typedef int sqlite3_context ;


 struct groupConcat* sqlite3_aggregate_context (int *,int ) ;
 int sqlite3_free ;
 int sqlite3_result_text (int *,scalar_t__*,size_t,int ) ;

__attribute__((used)) static void groupFinal(sqlite3_context *context){
  struct groupConcat *p;
  p = sqlite3_aggregate_context(context, 0);
  if( p && p->z ){
    p->z[p->nUsed] = 0;
    sqlite3_result_text(context, p->z, p->nUsed, sqlite3_free);
  }
}
