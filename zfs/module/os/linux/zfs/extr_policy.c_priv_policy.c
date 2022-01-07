
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cred_t ;
typedef int boolean_t ;


 int priv_policy_ns (int const*,int,int ,int,int *) ;

__attribute__((used)) static int
priv_policy(const cred_t *cr, int capability, boolean_t all, int err)
{
 return (priv_policy_ns(cr, capability, all, err, ((void*)0)));
}
