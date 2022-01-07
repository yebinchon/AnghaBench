
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsave_limits {int dummy; } ;


 struct xsave_limits const vmm_xsave_limits ;

const struct xsave_limits *
vmm_get_xsave_limits(void)
{
 return (&vmm_xsave_limits);
}
