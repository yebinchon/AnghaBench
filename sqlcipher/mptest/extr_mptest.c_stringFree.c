
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ z; } ;
typedef TYPE_1__ String ;


 int memset (TYPE_1__*,int ,int) ;
 int sqlite3_free (scalar_t__) ;

__attribute__((used)) static void stringFree(String *p){
  if( p->z ) sqlite3_free(p->z);
  memset(p, 0, sizeof(*p));
}
