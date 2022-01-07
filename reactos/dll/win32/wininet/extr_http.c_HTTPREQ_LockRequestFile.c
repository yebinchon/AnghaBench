
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int req_file_t ;
typedef int object_header_t ;
struct TYPE_3__ {int req_file; } ;
typedef TYPE_1__ http_request_t ;
typedef int DWORD ;


 int ERROR_FILE_NOT_FOUND ;
 int ERROR_SUCCESS ;
 int TRACE (char*,TYPE_1__*) ;
 int WARN (char*) ;
 int * req_file_addref (int ) ;

__attribute__((used)) static DWORD HTTPREQ_LockRequestFile(object_header_t *hdr, req_file_t **ret)
{
    http_request_t *req = (http_request_t*)hdr;

    TRACE("(%p)\n", req);

    if(!req->req_file) {
        WARN("No cache file name available\n");
        return ERROR_FILE_NOT_FOUND;
    }

    *ret = req_file_addref(req->req_file);
    return ERROR_SUCCESS;
}
