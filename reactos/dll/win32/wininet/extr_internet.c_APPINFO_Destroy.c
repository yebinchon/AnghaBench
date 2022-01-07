
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int object_header_t ;
struct TYPE_3__ {int proxyPassword; int proxyUsername; int proxyBypass; int proxy; int agent; } ;
typedef TYPE_1__ appinfo_t ;
typedef int VOID ;


 int TRACE (char*,TYPE_1__*) ;
 int heap_free (int ) ;

__attribute__((used)) static VOID APPINFO_Destroy(object_header_t *hdr)
{
    appinfo_t *lpwai = (appinfo_t*)hdr;

    TRACE("%p\n",lpwai);

    heap_free(lpwai->agent);
    heap_free(lpwai->proxy);
    heap_free(lpwai->proxyBypass);
    heap_free(lpwai->proxyUsername);
    heap_free(lpwai->proxyPassword);
}
