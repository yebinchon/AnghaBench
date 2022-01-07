
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zvol_platform_ops_t ;


 int const* ops ;

void
zvol_register_ops(const zvol_platform_ops_t *zvol_ops)
{
 ops = zvol_ops;
}
