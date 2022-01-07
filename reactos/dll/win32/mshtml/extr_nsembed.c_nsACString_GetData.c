
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsACString ;
typedef int UINT32 ;


 int NS_CStringGetData (int const*,char const**,int *) ;

UINT32 nsACString_GetData(const nsACString *str, const char **data)
{
    return NS_CStringGetData(str, data, ((void*)0));
}
