
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {int iSockaddrLength; int lpSockaddr; } ;
struct TYPE_5__ {TYPE_1__ Address; } ;
typedef TYPE_1__ SOCKET_ADDRESS ;
typedef TYPE_2__ IP_ADAPTER_UNICAST_ADDRESS ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ GetNameInfoW (int ,int ,int *,int ,int *,int ,int ) ;
 int NI_MAXHOST ;
 int NI_NAMEREQD ;
 int * heap_strdupW (int *) ;

__attribute__((used)) static WCHAR *get_dnshostname( IP_ADAPTER_UNICAST_ADDRESS *addr )
{
    const SOCKET_ADDRESS *sa = &addr->Address;
    WCHAR buf[NI_MAXHOST];

    if (!addr) return ((void*)0);
    if (GetNameInfoW( sa->lpSockaddr, sa->iSockaddrLength, buf, ARRAY_SIZE( buf ), ((void*)0),
                      0, NI_NAMEREQD )) return ((void*)0);
    return heap_strdupW( buf );
}
