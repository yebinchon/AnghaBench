
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int dnode_t ;


 int zap_lookup_norm_by_dnode (int *,char const*,int ,int ,void*,int ,int *,int ,int *) ;

int
zap_lookup_by_dnode(dnode_t *dn, const char *name,
    uint64_t integer_size, uint64_t num_integers, void *buf)
{
 return (zap_lookup_norm_by_dnode(dn, name, integer_size,
     num_integers, buf, 0, ((void*)0), 0, ((void*)0)));
}
