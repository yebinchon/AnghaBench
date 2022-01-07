
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cred_t ;


 int put_cred (int const*) ;

void
crfree(cred_t *cr)
{
 put_cred((const cred_t *)cr);
}
