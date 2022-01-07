
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * letP ;
 scalar_t__ xopterr ;
 int xoptind ;

__attribute__((used)) static
void xoptinit()
{
 xoptind = 1;
 xopterr = 0;
 letP = ((void*)0);
}
