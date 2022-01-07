
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int node ;


 int * node_lambda_alloc (int *,int *,int ) ;

node*
node_lambda_new(node* args, node* compstmt)
{
  return node_lambda_alloc(args, compstmt, 0);
}
