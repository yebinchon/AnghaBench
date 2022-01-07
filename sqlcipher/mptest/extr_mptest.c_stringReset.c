
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* z; scalar_t__ n; } ;
typedef TYPE_1__ String ;


 int stringAppend (TYPE_1__*,char*,int) ;

__attribute__((used)) static void stringReset(String *p){
  if( p->z==0 ) stringAppend(p, " ", 1);
  p->n = 0;
  p->z[0] = 0;
}
