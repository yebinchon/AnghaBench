
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int i; } ;
struct TYPE_9__ {int nState; int* aArg; TYPE_1__ sIn; } ;
typedef TYPE_2__ ReCompiled ;


 int RE_OP_FORK ;
 int RE_OP_GOTO ;
 char rePeek (TYPE_2__*) ;
 int re_append (TYPE_2__*,int ,int ) ;
 int re_insert (TYPE_2__*,int,int ,int) ;
 char* re_subcompile_string (TYPE_2__*) ;

__attribute__((used)) static const char *re_subcompile_re(ReCompiled *p){
  const char *zErr;
  int iStart, iEnd, iGoto;
  iStart = p->nState;
  zErr = re_subcompile_string(p);
  if( zErr ) return zErr;
  while( rePeek(p)=='|' ){
    iEnd = p->nState;
    re_insert(p, iStart, RE_OP_FORK, iEnd + 2 - iStart);
    iGoto = re_append(p, RE_OP_GOTO, 0);
    p->sIn.i++;
    zErr = re_subcompile_string(p);
    if( zErr ) return zErr;
    p->aArg[iGoto] = p->nState - iGoto;
  }
  return 0;
}
