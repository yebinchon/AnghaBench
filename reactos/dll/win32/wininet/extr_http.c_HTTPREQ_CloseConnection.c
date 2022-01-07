
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int object_header_t ;
typedef int http_request_t ;


 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 scalar_t__ drain_content (int *,int ) ;
 int http_release_netconn (int *,int) ;

__attribute__((used)) static void HTTPREQ_CloseConnection(object_header_t *hdr)
{
    http_request_t *req = (http_request_t*)hdr;

    http_release_netconn(req, drain_content(req, FALSE) == ERROR_SUCCESS);
}
