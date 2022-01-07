
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int * s; } ;
typedef TYPE_1__ StringBuffer ;


 scalar_t__ safe_isspace (int ) ;

__attribute__((used)) static void trimWhiteSpace(StringBuffer *p){
  while( p->len>0 && safe_isspace(p->s[p->len-1]) ){
    p->len--;
  }
}
