
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x2node ;
struct s_x2 {int size; int ** ht; int * tbl; scalar_t__ count; } ;


 scalar_t__ calloc (int,int) ;
 int free (struct s_x2*) ;
 scalar_t__ malloc (int) ;
 struct s_x2* x2a ;

void Symbol_init(void){
  if( x2a ) return;
  x2a = (struct s_x2*)malloc( sizeof(struct s_x2) );
  if( x2a ){
    x2a->size = 128;
    x2a->count = 0;
    x2a->tbl = (x2node*)calloc(128, sizeof(x2node) + sizeof(x2node*));
    if( x2a->tbl==0 ){
      free(x2a);
      x2a = 0;
    }else{
      int i;
      x2a->ht = (x2node**)&(x2a->tbl[128]);
      for(i=0; i<128; i++) x2a->ht[i] = 0;
    }
  }
}
