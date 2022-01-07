
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int Form_pg_proc ;


 int IS_VALID_CLOSED_PARTITIONING_FUNC (int ,int ) ;

__attribute__((used)) static bool
closed_dim_partitioning_func_filter(Form_pg_proc form, void *arg)
{
 Oid *argtype = arg;

 return IS_VALID_CLOSED_PARTITIONING_FUNC(form, *argtype);
}
