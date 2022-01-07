
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsACString ;


 int NS_CSTRING_CONTAINER_INIT_DEPEND ;
 int NS_CStringContainerInit2 (int *,char const*,int ,int ) ;
 int PR_UINT32_MAX ;

void nsACString_InitDepend(nsACString *str, const char *data)
{
    NS_CStringContainerInit2(str, data, PR_UINT32_MAX, NS_CSTRING_CONTAINER_INIT_DEPEND);
}
