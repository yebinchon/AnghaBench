
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsAString ;
typedef int PRUnichar ;
typedef int BOOL ;


 int NS_SUCCEEDED (int ) ;
 int NS_StringContainerInit2 (int *,int const*,int ,int ) ;
 int PR_UINT32_MAX ;

BOOL nsAString_Init(nsAString *str, const PRUnichar *data)
{
    return NS_SUCCEEDED(NS_StringContainerInit2(str, data, PR_UINT32_MAX, 0));
}
