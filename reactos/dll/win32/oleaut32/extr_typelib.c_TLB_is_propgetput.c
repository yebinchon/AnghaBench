
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ INVOKEKIND ;
typedef int BOOL ;


 scalar_t__ INVOKE_PROPERTYGET ;
 scalar_t__ INVOKE_PROPERTYPUT ;
 scalar_t__ INVOKE_PROPERTYPUTREF ;

__attribute__((used)) static BOOL TLB_is_propgetput(INVOKEKIND invkind)
{
    return (invkind == INVOKE_PROPERTYGET ||
        invkind == INVOKE_PROPERTYPUT ||
        invkind == INVOKE_PROPERTYPUTREF);
}
