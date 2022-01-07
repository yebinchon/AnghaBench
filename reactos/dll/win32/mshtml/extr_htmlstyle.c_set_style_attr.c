
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int styleid_t ;
struct TYPE_3__ {int nsstyle; } ;
typedef int LPCWSTR ;
typedef TYPE_1__ HTMLStyle ;
typedef int HRESULT ;
typedef int DWORD ;


 int set_nsstyle_attr (int ,int ,int ,int ) ;

__attribute__((used)) static inline HRESULT set_style_attr(HTMLStyle *This, styleid_t sid, LPCWSTR value, DWORD flags)
{
    return set_nsstyle_attr(This->nsstyle, sid, value, flags);
}
