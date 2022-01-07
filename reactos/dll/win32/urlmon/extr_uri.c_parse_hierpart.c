
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ scheme_type; char const* path; void* is_opaque; void* must_have_path; int has_implicit_scheme; int path_len; } ;
typedef TYPE_1__ parse_data ;
typedef char WCHAR ;
typedef int DWORD ;
typedef void* BOOL ;


 void* FALSE ;
 int TRACE (char*,char const**,TYPE_1__*,int) ;
 void* TRUE ;
 scalar_t__ URL_SCHEME_JAVASCRIPT ;
 scalar_t__ URL_SCHEME_UNKNOWN ;
 scalar_t__ URL_SCHEME_WILDCARD ;
 int Uri_CREATE_NO_CRACK_UNKNOWN_SCHEMES ;
 scalar_t__ is_hierarchical_uri (char const**,TYPE_1__*) ;
 int parse_authority (char const**,TYPE_1__*,int) ;
 void* parse_path_hierarchical (char const**,TYPE_1__*,int) ;
 int parse_path_opaque (char const**,TYPE_1__*,int) ;
 int strlenW (char const*) ;

__attribute__((used)) static BOOL parse_hierpart(const WCHAR **ptr, parse_data *data, DWORD flags) {
    const WCHAR *start = *ptr;

    data->must_have_path = FALSE;


    if(data->scheme_type == URL_SCHEME_JAVASCRIPT) {
        data->path = *ptr;
        data->path_len = strlenW(*ptr);
        data->is_opaque = TRUE;
        *ptr += data->path_len;
        return TRUE;
    }


    if(is_hierarchical_uri(ptr, data)) {



        if(data->scheme_type != URL_SCHEME_UNKNOWN ||
           !(flags & Uri_CREATE_NO_CRACK_UNKNOWN_SCHEMES)) {
            TRACE("(%p %p %x): Treating URI as an hierarchical URI.\n", ptr, data, flags);
            data->is_opaque = FALSE;

            if(data->scheme_type == URL_SCHEME_WILDCARD && !data->has_implicit_scheme) {
                if(**ptr == '/' && *(*ptr+1) == '/') {
                    data->must_have_path = TRUE;
                    *ptr += 2;
                }
            }


            if(!parse_authority(ptr, data, flags))
                return FALSE;

            return parse_path_hierarchical(ptr, data, flags);
        } else



            *ptr = start;
    }





    TRACE("(%p %p %x): Treating URI as an opaque URI.\n", ptr, data, flags);

    data->is_opaque = TRUE;
    if(!parse_path_opaque(ptr, data, flags))
        return FALSE;

    return TRUE;
}
