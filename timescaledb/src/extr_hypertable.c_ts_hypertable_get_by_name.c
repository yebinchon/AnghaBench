
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Hypertable ;


 int AccessShareLock ;
 int hypertable_scan (char*,char*,int ,int **,int ,int) ;
 int hypertable_tuple_found ;

Hypertable *
ts_hypertable_get_by_name(char *schema, char *name)
{
 Hypertable *ht = ((void*)0);

 hypertable_scan(schema, name, hypertable_tuple_found, &ht, AccessShareLock, 0);

 return ht;
}
