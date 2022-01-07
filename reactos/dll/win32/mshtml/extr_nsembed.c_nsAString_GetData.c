
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsAString ;
typedef int UINT32 ;
typedef int PRUnichar ;


 int NS_StringGetData (int const*,int const**,int *) ;

UINT32 nsAString_GetData(const nsAString *str, const PRUnichar **data)
{
    return NS_StringGetData(str, data, ((void*)0));
}
