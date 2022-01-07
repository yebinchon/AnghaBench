
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int http_request_t ;
typedef int DWORD ;
typedef int BOOL ;


 int ERR (char*) ;
 int ERROR_SUCCESS ;

__attribute__((used)) static DWORD init_gzip_stream(http_request_t *req, BOOL is_gzip)
{
    ERR("gzip stream not supported, missing zlib.\n");
    return ERROR_SUCCESS;
}
