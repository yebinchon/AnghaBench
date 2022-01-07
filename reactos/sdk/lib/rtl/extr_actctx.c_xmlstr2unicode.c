
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ len; scalar_t__ ptr; } ;
typedef TYPE_1__ xmlstr_t ;
typedef int WCHAR ;
typedef int USHORT ;
struct TYPE_6__ {int Length; int MaximumLength; scalar_t__ Buffer; } ;
typedef TYPE_2__ UNICODE_STRING ;
typedef scalar_t__ PWSTR ;



__attribute__((used)) static UNICODE_STRING xmlstr2unicode(const xmlstr_t *xmlstr)
{
    UNICODE_STRING res;

    res.Buffer = (PWSTR)xmlstr->ptr;
    res.Length = res.MaximumLength = (USHORT)xmlstr->len * sizeof(WCHAR);

    return res;
}
