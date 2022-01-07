
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B_TRUE ;
 int for_each_pool (int ,int *,int ,int *,int ,char*) ;
 int is_pool_cb ;

__attribute__((used)) static int
is_pool(char *name)
{
 return (for_each_pool(0, ((void*)0), B_TRUE, ((void*)0), is_pool_cb, name));
}
