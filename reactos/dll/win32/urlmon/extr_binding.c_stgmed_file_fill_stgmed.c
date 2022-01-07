
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int stgmed_obj_t ;
struct TYPE_7__ {TYPE_5__* buf; } ;
typedef TYPE_2__ stgmed_file_obj_t ;
struct TYPE_9__ {int IUnknown_iface; scalar_t__ cache_file; } ;
struct TYPE_6__ {scalar_t__ lpszFileName; } ;
struct TYPE_8__ {int * pUnkForRelease; TYPE_1__ u; int tymed; } ;
typedef TYPE_3__ STGMEDIUM ;
typedef int HRESULT ;


 int INET_E_DATA_NOT_AVAILABLE ;
 int S_OK ;
 int TYMED_FILE ;
 int WARN (char*) ;
 int read_protocol_data (TYPE_5__*) ;

__attribute__((used)) static HRESULT stgmed_file_fill_stgmed(stgmed_obj_t *obj, STGMEDIUM *stgmed)
{
    stgmed_file_obj_t *file_obj = (stgmed_file_obj_t*)obj;

    if(!file_obj->buf->cache_file) {
        WARN("cache_file not set\n");
        return INET_E_DATA_NOT_AVAILABLE;
    }

    read_protocol_data(file_obj->buf);

    stgmed->tymed = TYMED_FILE;
    stgmed->u.lpszFileName = file_obj->buf->cache_file;
    stgmed->pUnkForRelease = &file_obj->buf->IUnknown_iface;

    return S_OK;
}
