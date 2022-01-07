
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Reprog ;


 int default_alloc ;
 int regfreex (int ,int *,int *) ;

void regfree(Reprog *prog)
{
 regfreex(default_alloc, ((void*)0), prog);
}
