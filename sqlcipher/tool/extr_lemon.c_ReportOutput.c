
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct symbol {char* name; scalar_t__ type; int prec; scalar_t__ bContent; scalar_t__ firstset; scalar_t__ lambda; } ;
struct state {int statenum; struct action* ap; struct config* cfp; struct config* bp; } ;
struct rule {int iRule; TYPE_2__* precsym; struct rule* next; } ;
struct lemon {int nxstate; int nsymbol; int nterminal; struct rule* rule; struct symbol** symbols; scalar_t__ basisflag; struct state** sorted; } ;
struct config {scalar_t__ dot; struct config* next; struct config* bp; int bplp; int fplp; int fws; TYPE_1__* rp; } ;
struct action {struct action* next; } ;
struct TYPE_4__ {char* name; int prec; } ;
struct TYPE_3__ {scalar_t__ nrhs; int iRule; } ;
typedef int FILE ;


 int ConfigPrint (int *,struct config*) ;
 scalar_t__ NONTERMINAL ;
 int PlinkPrint (int *,int ,char*) ;
 scalar_t__ PrintAction (struct action*,int *,int) ;
 scalar_t__ SetFind (scalar_t__,int) ;
 int SetPrint (int *,int ,struct lemon*) ;
 int fclose (int *) ;
 int * file_open (struct lemon*,char*,char*) ;
 int fprintf (int *,char*,...) ;
 int lemon_sprintf (char*,char*,int ) ;
 int rule_print (int *,struct rule*) ;
 scalar_t__ strlen (char*) ;

void ReportOutput(struct lemon *lemp)
{
  int i, n;
  struct state *stp;
  struct config *cfp;
  struct action *ap;
  struct rule *rp;
  FILE *fp;

  fp = file_open(lemp,".out","wb");
  if( fp==0 ) return;
  for(i=0; i<lemp->nxstate; i++){
    stp = lemp->sorted[i];
    fprintf(fp,"State %d:\n",stp->statenum);
    if( lemp->basisflag ) cfp=stp->bp;
    else cfp=stp->cfp;
    while( cfp ){
      char buf[20];
      if( cfp->dot==cfp->rp->nrhs ){
        lemon_sprintf(buf,"(%d)",cfp->rp->iRule);
        fprintf(fp,"    %5s ",buf);
      }else{
        fprintf(fp,"          ");
      }
      ConfigPrint(fp,cfp);
      fprintf(fp,"\n");





      if( lemp->basisflag ) cfp=cfp->bp;
      else cfp=cfp->next;
    }
    fprintf(fp,"\n");
    for(ap=stp->ap; ap; ap=ap->next){
      if( PrintAction(ap,fp,30) ) fprintf(fp,"\n");
    }
    fprintf(fp,"\n");
  }
  fprintf(fp, "----------------------------------------------------\n");
  fprintf(fp, "Symbols:\n");
  fprintf(fp, "The first-set of non-terminals is shown after the name.\n\n");
  for(i=0; i<lemp->nsymbol; i++){
    int j;
    struct symbol *sp;

    sp = lemp->symbols[i];
    fprintf(fp, "  %3d: %s", i, sp->name);
    if( sp->type==NONTERMINAL ){
      fprintf(fp, ":");
      if( sp->lambda ){
        fprintf(fp, " <lambda>");
      }
      for(j=0; j<lemp->nterminal; j++){
        if( sp->firstset && SetFind(sp->firstset, j) ){
          fprintf(fp, " %s", lemp->symbols[j]->name);
        }
      }
    }
    if( sp->prec>=0 ) fprintf(fp," (precedence=%d)", sp->prec);
    fprintf(fp, "\n");
  }
  fprintf(fp, "----------------------------------------------------\n");
  fprintf(fp, "Syntax-only Symbols:\n");
  fprintf(fp, "The following symbols never carry semantic content.\n\n");
  for(i=n=0; i<lemp->nsymbol; i++){
    int w;
    struct symbol *sp = lemp->symbols[i];
    if( sp->bContent ) continue;
    w = (int)strlen(sp->name);
    if( n>0 && n+w>75 ){
      fprintf(fp,"\n");
      n = 0;
    }
    if( n>0 ){
      fprintf(fp, " ");
      n++;
    }
    fprintf(fp, "%s", sp->name);
    n += w;
  }
  if( n>0 ) fprintf(fp, "\n");
  fprintf(fp, "----------------------------------------------------\n");
  fprintf(fp, "Rules:\n");
  for(rp=lemp->rule; rp; rp=rp->next){
    fprintf(fp, "%4d: ", rp->iRule);
    rule_print(fp, rp);
    fprintf(fp,".");
    if( rp->precsym ){
      fprintf(fp," [%s precedence=%d]",
              rp->precsym->name, rp->precsym->prec);
    }
    fprintf(fp,"\n");
  }
  fclose(fp);
  return;
}
