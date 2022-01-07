
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int includepath ;
 int nincludepath ;
 char* wpp_default_lookup (char const*,int,char const*,int ,int ) ;

char *wpp_find_include(const char *name, const char *parent_name)
{
    return wpp_default_lookup(name, !!parent_name, parent_name, includepath, nincludepath);
}
