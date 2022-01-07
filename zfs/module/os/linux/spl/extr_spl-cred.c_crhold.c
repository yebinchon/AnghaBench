
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cred_t ;


 int get_cred (int const*) ;

void
crhold(cred_t *cr)
{
 (void) get_cred((const cred_t *)cr);
}
