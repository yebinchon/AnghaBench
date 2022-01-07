
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nsymbol; int nterminal; } ;
typedef TYPE_1__ acttab ;


 scalar_t__ calloc (int,int) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int memset (TYPE_1__*,int ,int) ;
 int stderr ;

acttab *acttab_alloc(int nsymbol, int nterminal){
  acttab *p = (acttab *) calloc( 1, sizeof(*p) );
  if( p==0 ){
    fprintf(stderr,"Unable to allocate memory for a new acttab.");
    exit(1);
  }
  memset(p, 0, sizeof(*p));
  p->nsymbol = nsymbol;
  p->nterminal = nterminal;
  return p;
}
