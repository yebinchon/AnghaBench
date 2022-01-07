
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* get_namespace_name (int ) ;
 int ts_extension_schema_oid () ;

char *
ts_extension_schema_name(void)
{
 return get_namespace_name(ts_extension_schema_oid());
}
