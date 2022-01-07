
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int cnt; int string_len; TYPE_1__** cookies; } ;
typedef TYPE_2__ cookie_set_t ;
typedef int WCHAR ;
struct TYPE_4__ {scalar_t__* data; scalar_t__* name; } ;


 int TRACE (char*,int ) ;
 int assert (int) ;
 int debugstr_wn (int *,int) ;
 int memcpy (int *,scalar_t__*,unsigned int) ;
 unsigned int strlenW (scalar_t__*) ;

__attribute__((used)) static void cookie_set_to_string(const cookie_set_t *cookie_set, WCHAR *str)
{
    WCHAR *ptr = str;
    unsigned i, len;

    for(i=0; i<cookie_set->cnt; i++) {
        if(i) {
            *ptr++ = ';';
            *ptr++ = ' ';
        }

        len = strlenW(cookie_set->cookies[i]->name);
        memcpy(ptr, cookie_set->cookies[i]->name, len*sizeof(WCHAR));
        ptr += len;

        if(*cookie_set->cookies[i]->data) {
            *ptr++ = '=';
            len = strlenW(cookie_set->cookies[i]->data);
            memcpy(ptr, cookie_set->cookies[i]->data, len*sizeof(WCHAR));
            ptr += len;
        }
    }

    assert(ptr-str == cookie_set->string_len);
    TRACE("%s\n", debugstr_wn(str, ptr-str));
}
