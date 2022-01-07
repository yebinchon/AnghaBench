
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int current; } ;
typedef TYPE_1__ LexState ;


 int save_and_next (TYPE_1__*) ;

__attribute__((used)) static int skip_sep(LexState*ls){
int count=0;
int s=ls->current;
save_and_next(ls);
while(ls->current=='='){
save_and_next(ls);
count++;
}
return(ls->current==s)?count:(-count)-1;
}
