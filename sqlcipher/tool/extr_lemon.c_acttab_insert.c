
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lookahead_action {int lookahead; int action; } ;
struct TYPE_3__ {int nLookahead; int nsymbol; int nAction; int nActionAlloc; int mnLookahead; int mnAction; int mxLookahead; int nterminal; struct lookahead_action* aLookahead; struct lookahead_action* aAction; } ;
typedef TYPE_1__ acttab ;


 int assert (int) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int printf (char*,...) ;
 scalar_t__ realloc (struct lookahead_action*,int) ;
 int stderr ;

int acttab_insert(acttab *p, int makeItSafe){
  int i, j, k, n, end;
  assert( p->nLookahead>0 );





  n = p->nsymbol + 1;
  if( p->nAction + n >= p->nActionAlloc ){
    int oldAlloc = p->nActionAlloc;
    p->nActionAlloc = p->nAction + n + p->nActionAlloc + 20;
    p->aAction = (struct lookahead_action *) realloc( p->aAction,
                          sizeof(p->aAction[0])*p->nActionAlloc);
    if( p->aAction==0 ){
      fprintf(stderr,"malloc failed\n");
      exit(1);
    }
    for(i=oldAlloc; i<p->nActionAlloc; i++){
      p->aAction[i].lookahead = -1;
      p->aAction[i].action = -1;
    }
  }







  end = makeItSafe ? p->mnLookahead : 0;
  for(i=p->nAction-1; i>=end; i--){
    if( p->aAction[i].lookahead==p->mnLookahead ){


      if( p->aAction[i].action!=p->mnAction ) continue;
      for(j=0; j<p->nLookahead; j++){
        k = p->aLookahead[j].lookahead - p->mnLookahead + i;
        if( k<0 || k>=p->nAction ) break;
        if( p->aLookahead[j].lookahead!=p->aAction[k].lookahead ) break;
        if( p->aLookahead[j].action!=p->aAction[k].action ) break;
      }
      if( j<p->nLookahead ) continue;



      n = 0;
      for(j=0; j<p->nAction; j++){
        if( p->aAction[j].lookahead<0 ) continue;
        if( p->aAction[j].lookahead==j+p->mnLookahead-i ) n++;
      }
      if( n==p->nLookahead ){
        break;
      }
    }
  }





  if( i<end ){




    i = makeItSafe ? p->mnLookahead : 0;
    for(; i<p->nActionAlloc - p->mxLookahead; i++){
      if( p->aAction[i].lookahead<0 ){
        for(j=0; j<p->nLookahead; j++){
          k = p->aLookahead[j].lookahead - p->mnLookahead + i;
          if( k<0 ) break;
          if( p->aAction[k].lookahead>=0 ) break;
        }
        if( j<p->nLookahead ) continue;
        for(j=0; j<p->nAction; j++){
          if( p->aAction[j].lookahead==j+p->mnLookahead-i ) break;
        }
        if( j==p->nAction ){
          break;
        }
      }
    }
  }
  for(j=0; j<p->nLookahead; j++){
    k = p->aLookahead[j].lookahead - p->mnLookahead + i;
    p->aAction[k] = p->aLookahead[j];
    if( k>=p->nAction ) p->nAction = k+1;
  }
  if( makeItSafe && i+p->nterminal>=p->nAction ) p->nAction = i+p->nterminal+1;
  p->nLookahead = 0;



  return i - p->mnLookahead;
}
