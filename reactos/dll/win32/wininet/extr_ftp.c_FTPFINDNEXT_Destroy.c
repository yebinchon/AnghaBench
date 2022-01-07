
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int object_header_t ;
struct TYPE_6__ {struct TYPE_6__* lpszName; } ;
struct TYPE_5__ {size_t size; TYPE_3__* lpafp; TYPE_1__* lpFtpSession; } ;
struct TYPE_4__ {int hdr; } ;
typedef TYPE_2__* LPWININETFTPFINDNEXTW ;
typedef size_t DWORD ;


 int TRACE (char*) ;
 int WININET_Release (int *) ;
 int heap_free (TYPE_3__*) ;

__attribute__((used)) static void FTPFINDNEXT_Destroy(object_header_t *hdr)
{
    LPWININETFTPFINDNEXTW lpwfn = (LPWININETFTPFINDNEXTW) hdr;
    DWORD i;

    TRACE("\n");

    WININET_Release(&lpwfn->lpFtpSession->hdr);

    for (i = 0; i < lpwfn->size; i++)
    {
        heap_free(lpwfn->lpafp[i].lpszName);
    }
    heap_free(lpwfn->lpafp);
}
