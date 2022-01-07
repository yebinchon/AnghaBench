
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* z; } ;
typedef TYPE_1__ GeoParse ;


 scalar_t__ safe_isspace (char) ;

__attribute__((used)) static char geopolySkipSpace(GeoParse *p){
  while( safe_isspace(p->z[0]) ) p->z++;
  return p->z[0];
}
