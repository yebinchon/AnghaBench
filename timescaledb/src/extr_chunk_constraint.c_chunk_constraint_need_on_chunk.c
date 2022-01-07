
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ contype; } ;
typedef TYPE_1__* Form_pg_constraint ;


 scalar_t__ CONSTRAINT_CHECK ;

__attribute__((used)) static bool
chunk_constraint_need_on_chunk(Form_pg_constraint conform)
{
 if (conform->contype == CONSTRAINT_CHECK)
 {
  return 0;
 }
 return 1;
}
