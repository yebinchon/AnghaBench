
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsACString ;
typedef int BOOL ;


 int NS_CStringContainerInit2 (int *,char const*,int ,int ) ;
 int NS_SUCCEEDED (int ) ;
 int PR_UINT32_MAX ;

BOOL nsACString_Init(nsACString *str, const char *data)
{
    return NS_SUCCEEDED(NS_CStringContainerInit2(str, data, PR_UINT32_MAX, 0));
}
