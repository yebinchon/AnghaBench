
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int headers_section; } ;
typedef TYPE_1__ http_request_t ;
typedef int WCHAR ;
typedef int BOOL ;


 int EnterCriticalSection (int *) ;
 int HTTP_DeleteCustomHeader (TYPE_1__*,int) ;
 int HTTP_GetCustomHeaderIndex (TYPE_1__*,int const*,int ,int ) ;
 int LeaveCriticalSection (int *) ;

__attribute__((used)) static void remove_header( http_request_t *request, const WCHAR *str, BOOL from_request )
{
    int index;
    EnterCriticalSection( &request->headers_section );
    index = HTTP_GetCustomHeaderIndex( request, str, 0, from_request );
    if (index != -1) HTTP_DeleteCustomHeader( request, index );
    LeaveCriticalSection( &request->headers_section );
}
