
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vim_acl_T ;
struct my_acl {int pSecurityDescriptor; } ;


 int LocalFree (int ) ;
 int vim_free (struct my_acl*) ;

void
mch_free_acl(vim_acl_T acl)
{
}
