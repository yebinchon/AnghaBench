
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int styleid_t ;
struct TYPE_3__ {int nsstyle; } ;
typedef TYPE_1__ HTMLStyle ;
typedef int HRESULT ;
typedef int BSTR ;


 int get_nsstyle_attr (int ,int ,int *,int ) ;

__attribute__((used)) static inline HRESULT get_style_attr(HTMLStyle *This, styleid_t sid, BSTR *p)
{
    return get_nsstyle_attr(This->nsstyle, sid, p, 0);
}
