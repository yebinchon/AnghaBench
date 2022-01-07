
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t nCustHeaders; TYPE_1__* custHeaders; } ;
typedef TYPE_2__ http_request_t ;
struct TYPE_4__ {int wFlags; int lpszField; } ;
typedef int LPCWSTR ;
typedef size_t INT ;
typedef size_t DWORD ;
typedef scalar_t__ BOOL ;


 int HDR_ISREQUEST ;
 int TRACE (char*,size_t,...) ;
 int debugstr_w (int ) ;
 scalar_t__ strcmpiW (int ,int ) ;

__attribute__((used)) static INT HTTP_GetCustomHeaderIndex(http_request_t *request, LPCWSTR lpszField,
                                     int requested_index, BOOL request_only)
{
    DWORD index;

    TRACE("%s, %d, %d\n", debugstr_w(lpszField), requested_index, request_only);

    for (index = 0; index < request->nCustHeaders; index++)
    {
        if (strcmpiW(request->custHeaders[index].lpszField, lpszField))
            continue;

        if (request_only && !(request->custHeaders[index].wFlags & HDR_ISREQUEST))
            continue;

        if (!request_only && (request->custHeaders[index].wFlags & HDR_ISREQUEST))
            continue;

        if (requested_index == 0)
            break;
        requested_index --;
    }

    if (index >= request->nCustHeaders)
 index = -1;

    TRACE("Return: %d\n", index);
    return index;
}
