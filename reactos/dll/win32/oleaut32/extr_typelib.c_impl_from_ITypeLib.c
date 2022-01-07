
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ITypeLibImpl ;
typedef int ITypeLib2 ;
typedef int ITypeLib ;


 int * impl_from_ITypeLib2 (int *) ;

__attribute__((used)) static inline ITypeLibImpl *impl_from_ITypeLib(ITypeLib *iface)
{
    return impl_from_ITypeLib2((ITypeLib2*)iface);
}
