
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ITfContext ;


 int ITfContext_AddRef (int *) ;
 int ITfContext_Release (int *) ;

__attribute__((used)) static inline int check_context_refcount(ITfContext *iface)
{
    ITfContext_AddRef(iface);
    return ITfContext_Release(iface);
}
