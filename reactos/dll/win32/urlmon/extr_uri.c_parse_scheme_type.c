
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int uri; void* scheme_type; scalar_t__ is_relative; scalar_t__ scheme_len; scalar_t__ scheme; } ;
typedef TYPE_1__ parse_data ;
struct TYPE_7__ {void* scheme; int scheme_name; } ;
typedef size_t DWORD ;
typedef int BOOL ;


 size_t ARRAY_SIZE (TYPE_2__*) ;
 int FALSE ;
 int FIXME (char*,TYPE_1__*,int ) ;
 int StrCmpNIW (int ,scalar_t__,scalar_t__) ;
 int TRUE ;
 void* URL_SCHEME_UNKNOWN ;
 int debugstr_w (int ) ;
 scalar_t__ lstrlenW (int ) ;
 TYPE_2__* recognized_schemes ;

__attribute__((used)) static BOOL parse_scheme_type(parse_data *data) {

    if(data->scheme && data->scheme_len) {
        DWORD i;

        for(i = 0; i < ARRAY_SIZE(recognized_schemes); ++i) {
            if(lstrlenW(recognized_schemes[i].scheme_name) == data->scheme_len) {

                if(!StrCmpNIW(recognized_schemes[i].scheme_name, data->scheme, data->scheme_len)) {
                    data->scheme_type = recognized_schemes[i].scheme;
                    return TRUE;
                }
            }
        }


        data->scheme_type = URL_SCHEME_UNKNOWN;
        return TRUE;
    } else if(data->is_relative) {

        data->scheme_type = URL_SCHEME_UNKNOWN;
        return TRUE;
    } else {

        FIXME("(%p): Unable to determine scheme type for URI %s\n", data, debugstr_w(data->uri));
        return FALSE;
    }
}
