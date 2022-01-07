
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int node ;


 int * node_lambda_alloc (int *,int *,int) ;

node*
node_block_new(node* compstmt)
{
  return node_lambda_alloc(((void*)0), compstmt, 1);
}
