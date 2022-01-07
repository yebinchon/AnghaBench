
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsAString ;


 int NS_StringContainerFinish (int *) ;

void nsAString_Finish(nsAString *str)
{
    NS_StringContainerFinish(str);
}
