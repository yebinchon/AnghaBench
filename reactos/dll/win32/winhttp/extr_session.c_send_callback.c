
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int notify_mask; int context; int handle; int (* callback ) (int ,int ,int,int ,int) ;} ;
typedef TYPE_1__ object_header_t ;
typedef int LPVOID ;
typedef int DWORD ;


 int TRACE (char*,...) ;
 int stub1 (int ,int ,int,int ,int) ;

void send_callback( object_header_t *hdr, DWORD status, LPVOID info, DWORD buflen )
{
    if (hdr->callback && (hdr->notify_mask & status))
    {
        TRACE("%p, 0x%08x, %p, %u\n", hdr, status, info, buflen);
        hdr->callback( hdr->handle, hdr->context, status, info, buflen );
        TRACE("returning from 0x%08x callback\n", status);
    }
}
