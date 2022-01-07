
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tablespace_scan_by_name (char const*,int *,int *) ;

int
ts_tablespace_count_attached(const char *tspcname)
{
 return tablespace_scan_by_name(tspcname, ((void*)0), ((void*)0));
}
