
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DISPID ;
typedef int BOOL ;


 scalar_t__ DISPID_DYNPROP_0 ;
 scalar_t__ DISPID_DYNPROP_MAX ;

__attribute__((used)) static inline BOOL is_dynamic_dispid(DISPID id)
{
    return DISPID_DYNPROP_0 <= id && id <= DISPID_DYNPROP_MAX;
}
