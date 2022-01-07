
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int host_type; } ;
typedef TYPE_1__ parse_data ;
typedef char WCHAR ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRACE (char*,char const**,TYPE_1__*,int ,int ,int) ;
 int TRUE ;
 int Uri_HOST_UNKNOWN ;
 int debugstr_wn (char const*,int) ;
 scalar_t__ is_hexdigit (char const) ;
 scalar_t__ is_subdelim (char const) ;
 scalar_t__ is_unreserved (char const) ;

__attribute__((used)) static BOOL parse_ipvfuture(const WCHAR **ptr, parse_data *data, DWORD flags) {
    const WCHAR *start = *ptr;


    if(**ptr != 'v' && **ptr != 'V')
        return FALSE;


    ++(*ptr);
    if(!is_hexdigit(**ptr)) {
        *ptr = start;
        return FALSE;
    }

    ++(*ptr);
    while(is_hexdigit(**ptr))
        ++(*ptr);


    if(**ptr != '.') {
        *ptr = start;
        return FALSE;
    }

    ++(*ptr);
    if(!is_unreserved(**ptr) && !is_subdelim(**ptr) && **ptr != ':') {
        *ptr = start;
        return FALSE;
    }

    ++(*ptr);
    while(is_unreserved(**ptr) || is_subdelim(**ptr) || **ptr == ':')
        ++(*ptr);

    data->host_type = Uri_HOST_UNKNOWN;

    TRACE("(%p %p %x): Parsed IPvFuture address %s len=%d\n", ptr, data, flags,
          debugstr_wn(start, *ptr-start), (int)(*ptr-start));

    return TRUE;
}
