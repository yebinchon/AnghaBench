
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ITypeInfoImpl ;
typedef int ITypeInfo2 ;
typedef int ITypeInfo ;


 int * impl_from_ITypeInfo2 (int *) ;

__attribute__((used)) static inline ITypeInfoImpl *impl_from_ITypeInfo( ITypeInfo *iface )
{
    return impl_from_ITypeInfo2((ITypeInfo2*)iface);
}
