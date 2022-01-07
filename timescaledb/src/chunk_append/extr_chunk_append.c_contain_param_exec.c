
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int contain_param_exec_walker (int *,int *) ;

__attribute__((used)) static bool
contain_param_exec(Node *node)
{
 return contain_param_exec_walker(node, ((void*)0));
}
