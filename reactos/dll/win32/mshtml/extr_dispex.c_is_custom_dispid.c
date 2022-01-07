
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DISPID ;
typedef int BOOL ;


 scalar_t__ MSHTML_DISPID_CUSTOM_MAX ;
 scalar_t__ MSHTML_DISPID_CUSTOM_MIN ;

__attribute__((used)) static inline BOOL is_custom_dispid(DISPID id)
{
    return MSHTML_DISPID_CUSTOM_MIN <= id && id <= MSHTML_DISPID_CUSTOM_MAX;
}
