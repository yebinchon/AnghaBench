
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * uri; } ;
typedef TYPE_1__ parse_data ;
typedef int WCHAR ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRACE (char*,TYPE_1__*,int ,...) ;
 int TRUE ;
 int debugstr_w (int *) ;
 int parse_fragment (int const**,TYPE_1__*,int ) ;
 int parse_hierpart (int const**,TYPE_1__*,int ) ;
 int parse_query (int const**,TYPE_1__*,int ) ;
 int parse_scheme (int const**,TYPE_1__*,int ,int ) ;

__attribute__((used)) static BOOL parse_uri(parse_data *data, DWORD flags) {
    const WCHAR *ptr;
    const WCHAR **pptr;

    ptr = data->uri;
    pptr = &ptr;

    TRACE("(%p %x): BEGINNING TO PARSE URI %s.\n", data, flags, debugstr_w(data->uri));

    if(!parse_scheme(pptr, data, flags, 0))
        return FALSE;

    if(!parse_hierpart(pptr, data, flags))
        return FALSE;

    if(!parse_query(pptr, data, flags))
        return FALSE;

    if(!parse_fragment(pptr, data, flags))
        return FALSE;

    TRACE("(%p %x): FINISHED PARSING URI.\n", data, flags);
    return TRUE;
}
