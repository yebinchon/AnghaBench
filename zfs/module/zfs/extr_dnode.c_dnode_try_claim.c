
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int objset_t ;


 int DNODE_DRY_RUN ;
 int DNODE_MUST_BE_FREE ;
 int dnode_hold_impl (int *,int ,int,int,int *,int *) ;

int
dnode_try_claim(objset_t *os, uint64_t object, int slots)
{
 return (dnode_hold_impl(os, object, DNODE_MUST_BE_FREE | DNODE_DRY_RUN,
     slots, ((void*)0), ((void*)0)));
}
