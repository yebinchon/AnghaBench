
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; int * s; } ;
typedef TYPE_1__ StringBuffer ;


 int append (TYPE_1__*,char*) ;
 scalar_t__ safe_isspace (int ) ;

__attribute__((used)) static void appendWhiteSpace(StringBuffer *p){
  if( p->len==0 ) return;
  if( safe_isspace(p->s[p->len-1]) ) return;
  append(p, " ");
}
