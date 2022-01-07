
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int object_header_t ;
typedef int connect_timeout ;
struct TYPE_2__ {int agent; int connect_timeout; } ;
typedef TYPE_1__ appinfo_t ;
typedef int ULONG ;
typedef int DWORD ;


 int ERROR_BAD_ARGUMENTS ;
 int ERROR_INTERNET_BAD_OPTION_LENGTH ;
 int ERROR_OUTOFMEMORY ;
 int ERROR_SUCCESS ;
 int FIXME (char*) ;
 int INET_SetOption (int *,int,void*,int) ;



 int TRACE (char*) ;
 int heap_free (int ) ;
 int heap_strdupW (void*) ;

__attribute__((used)) static DWORD APPINFO_SetOption(object_header_t *hdr, DWORD option, void *buf, DWORD size)
{
    appinfo_t *ai = (appinfo_t*)hdr;

    switch(option) {
    case 130:
        TRACE("INTERNET_OPTION_CONNECT_TIMEOUT\n");

        if(size != sizeof(connect_timeout))
            return ERROR_INTERNET_BAD_OPTION_LENGTH;
        if(!*(ULONG*)buf)
            return ERROR_BAD_ARGUMENTS;

        ai->connect_timeout = *(ULONG*)buf;
        return ERROR_SUCCESS;
    case 128:
        heap_free(ai->agent);
        if (!(ai->agent = heap_strdupW(buf))) return ERROR_OUTOFMEMORY;
        return ERROR_SUCCESS;
    case 129:
        FIXME("INTERNET_OPTION_REFRESH\n");
        return ERROR_SUCCESS;
    }

    return INET_SetOption(hdr, option, buf, size);
}
