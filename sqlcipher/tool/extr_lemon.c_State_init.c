
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x3node ;
struct s_x3 {int size; int ** ht; int * tbl; scalar_t__ count; } ;


 scalar_t__ calloc (int,int) ;
 int free (struct s_x3*) ;
 scalar_t__ malloc (int) ;
 struct s_x3* x3a ;

void State_init(void){
  if( x3a ) return;
  x3a = (struct s_x3*)malloc( sizeof(struct s_x3) );
  if( x3a ){
    x3a->size = 128;
    x3a->count = 0;
    x3a->tbl = (x3node*)calloc(128, sizeof(x3node) + sizeof(x3node*));
    if( x3a->tbl==0 ){
      free(x3a);
      x3a = 0;
    }else{
      int i;
      x3a->ht = (x3node**)&(x3a->tbl[128]);
      for(i=0; i<128; i++) x3a->ht[i] = 0;
    }
  }
}
