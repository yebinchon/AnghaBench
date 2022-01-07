
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsACString ;


 int NS_CStringContainerFinish (int *) ;

void nsACString_Finish(nsACString *str)
{
    NS_CStringContainerFinish(str);
}
