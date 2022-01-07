
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x4node ;
struct s_x4 {int size; int ** ht; int * tbl; scalar_t__ count; } ;


 scalar_t__ calloc (int,int) ;
 int free (struct s_x4*) ;
 scalar_t__ malloc (int) ;
 struct s_x4* x4a ;

void Configtable_init(void){
  if( x4a ) return;
  x4a = (struct s_x4*)malloc( sizeof(struct s_x4) );
  if( x4a ){
    x4a->size = 64;
    x4a->count = 0;
    x4a->tbl = (x4node*)calloc(64, sizeof(x4node) + sizeof(x4node*));
    if( x4a->tbl==0 ){
      free(x4a);
      x4a = 0;
    }else{
      int i;
      x4a->ht = (x4node**)&(x4a->tbl[64]);
      for(i=0; i<64; i++) x4a->ht[i] = 0;
    }
  }
}
