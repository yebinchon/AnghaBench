
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ n; } ;
typedef TYPE_1__ String ;


 int ISSPACE (char const) ;
 int stringAppend (TYPE_1__*,char const*,int) ;

__attribute__((used)) static void stringAppendTerm(String *p, const char *z){
  int i;
  if( p->n ) stringAppend(p, " ", 1);
  if( z==0 ){
    stringAppend(p, "nil", 3);
    return;
  }
  for(i=0; z[i] && !ISSPACE(z[i]); i++){}
  if( i>0 && z[i]==0 ){
    stringAppend(p, z, i);
    return;
  }
  stringAppend(p, "'", 1);
  while( z[0] ){
    for(i=0; z[i] && z[i]!='\''; i++){}
    if( z[i] ){
      stringAppend(p, z, i+1);
      stringAppend(p, "'", 1);
      z += i+1;
    }else{
      stringAppend(p, z, i);
      break;
    }
  }
  stringAppend(p, "'", 1);
}
