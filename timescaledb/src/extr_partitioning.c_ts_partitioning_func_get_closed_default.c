
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int ANYELEMENTOID ;
 int DEFAULT_PARTITIONING_FUNC_NAME ;
 int DEFAULT_PARTITIONING_FUNC_SCHEMA ;
 int closed_dim_partitioning_func_filter ;
 int ts_lookup_proc_filtered (int ,int ,int *,int ,int *) ;

Oid
ts_partitioning_func_get_closed_default(void)
{
 Oid argtype = ANYELEMENTOID;

 return ts_lookup_proc_filtered(DEFAULT_PARTITIONING_FUNC_SCHEMA,
           DEFAULT_PARTITIONING_FUNC_NAME,
           ((void*)0),
           closed_dim_partitioning_func_filter,
           &argtype);
}
