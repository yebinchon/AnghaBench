
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* PCTXTYPE ;


 int printf (char*,int) ;

void CtxHello( PCTXTYPE phContext )
{
 printf("CtxHello(): Hello, World! Context value: %d\n", *phContext);
}
