
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwInternalFlags; int hInternet; int (* lpfnStatusCB ) (int ,int ,int,void*,int) ;} ;
typedef TYPE_1__ object_header_t ;
typedef int DWORD_PTR ;
typedef int DWORD ;


 int INET_CALLBACKW ;





 int TRACE (char*,...) ;
 int debugstr_status_info (int,void*) ;
 int get_callback_name (int) ;
 void* heap_alloc (int) ;
 int heap_free (void*) ;
 void* heap_strdupW (void*) ;
 void* heap_strdupWtoA (void*) ;
 int memcpy (void*,void*,int) ;
 int strlen (void*) ;
 int stub1 (int ,int ,int,void*,int) ;

void INTERNET_SendCallback(object_header_t *hdr, DWORD_PTR context, DWORD status, void *info, DWORD info_len)
{
    void *new_info = info;

    if( !hdr->lpfnStatusCB )
        return;



    if(!context)
        return;

    switch(status) {
    case 130:
    case 131:
    case 132:
        new_info = heap_alloc(info_len);
        if(new_info)
            memcpy(new_info, info, info_len);
        break;
    case 128:
    case 129:
        if(hdr->dwInternalFlags & INET_CALLBACKW) {
            new_info = heap_strdupW(info);
            break;
        }else {
            new_info = heap_strdupWtoA(info);
            info_len = strlen(new_info)+1;
            break;
        }
    }

    TRACE(" callback(%p) (%p (%p), %08lx, %d (%s), %s, %d)\n",
   hdr->lpfnStatusCB, hdr->hInternet, hdr, context, status, get_callback_name(status),
   debugstr_status_info(status, new_info), info_len);

    hdr->lpfnStatusCB(hdr->hInternet, context, status, new_info, info_len);

    TRACE(" end callback().\n");

    if(new_info != info)
        heap_free(new_info);
}
