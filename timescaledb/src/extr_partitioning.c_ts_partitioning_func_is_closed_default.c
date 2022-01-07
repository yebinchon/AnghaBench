
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int) ;
 int DEFAULT_PARTITIONING_FUNC_NAME ;
 int DEFAULT_PARTITIONING_FUNC_SCHEMA ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static bool
ts_partitioning_func_is_closed_default(const char *schema, const char *funcname)
{
 Assert(schema != ((void*)0) && funcname != ((void*)0));

 return strcmp(DEFAULT_PARTITIONING_FUNC_SCHEMA, schema) == 0 &&
     strcmp(DEFAULT_PARTITIONING_FUNC_NAME, funcname) == 0;
}
