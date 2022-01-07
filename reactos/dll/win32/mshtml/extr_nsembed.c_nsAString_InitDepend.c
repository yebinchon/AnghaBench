
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsAString ;
typedef int PRUnichar ;


 int NS_STRING_CONTAINER_INIT_DEPEND ;
 int NS_StringContainerInit2 (int *,int const*,int ,int ) ;
 int PR_UINT32_MAX ;

void nsAString_InitDepend(nsAString *str, const PRUnichar *data)
{
    NS_StringContainerInit2(str, data, PR_UINT32_MAX, NS_STRING_CONTAINER_INIT_DEPEND);
}
