
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int byte ;
typedef TYPE_3__* adns_query ;
struct TYPE_14__ {scalar_t__ bytes; int untyped; } ;
struct TYPE_16__ {int nrrs; size_t rrsz; int status; scalar_t__ owner; scalar_t__ cname; TYPE_2__ rrs; } ;
typedef TYPE_4__ adns_answer ;
struct TYPE_15__ {int interim_allocd; TYPE_4__* answer; scalar_t__ preserved_allocd; TYPE_1__* typei; int * final_allocspace; } ;
struct TYPE_13__ {int (* makefinal ) (TYPE_3__*,scalar_t__) ;} ;


 int MEM_ROUND (int) ;
 int adns__makefinal_block (TYPE_3__*,int *,size_t) ;
 int adns__makefinal_str (TYPE_3__*,scalar_t__*) ;
 int adns__reset_preserved (TYPE_3__*) ;
 int adns_s_nomemory ;
 int free_query_allocs (TYPE_3__*) ;
 TYPE_4__* realloc (TYPE_4__*,int) ;
 int stub1 (TYPE_3__*,scalar_t__) ;

__attribute__((used)) static void makefinal_query(adns_query qu) {
  adns_answer *ans;
  int rrn;

  ans= qu->answer;

  if (qu->interim_allocd) {
    ans= realloc(qu->answer, MEM_ROUND(MEM_ROUND(sizeof(*ans)) + qu->interim_allocd));
    if (!ans) goto x_nomem;
    qu->answer= ans;
  }

  qu->final_allocspace= (byte*)ans + MEM_ROUND(sizeof(*ans));
  adns__makefinal_str(qu,&ans->cname);
  adns__makefinal_str(qu,&ans->owner);

  if (ans->nrrs) {
    adns__makefinal_block(qu, &ans->rrs.untyped, (size_t) ans->nrrs*ans->rrsz);

    for (rrn=0; rrn<ans->nrrs; rrn++)
      qu->typei->makefinal(qu, ans->rrs.bytes + rrn*ans->rrsz);
  }

  free_query_allocs(qu);
  return;

 x_nomem:
  qu->preserved_allocd= 0;
  qu->answer->cname= 0;
  qu->answer->owner= 0;
  adns__reset_preserved(qu);

  qu->answer->status= adns_s_nomemory;
  free_query_allocs(qu);
}
