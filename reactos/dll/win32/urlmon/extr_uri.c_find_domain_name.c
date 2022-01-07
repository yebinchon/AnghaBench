
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int tld_name; } ;
typedef int INT ;
typedef int DWORD ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int StrCmpNIW (int const*,int ,int) ;
 int TRACE (char*,int ) ;
 int debugstr_wn (int const*,int) ;
 int * memrchrW (int const*,char,int) ;
 TYPE_1__* recognized_tlds ;

void find_domain_name(const WCHAR *host, DWORD host_len,
                             INT *domain_start) {
    const WCHAR *last_tld, *sec_last_tld, *end;

    end = host+host_len-1;

    *domain_start = -1;




    if(host_len < 4)
        return;

    last_tld = memrchrW(host, '.', host_len);
    if(!last_tld)

        return;

    sec_last_tld = memrchrW(host, '.', last_tld-host);
    if(!sec_last_tld) {






        if(last_tld-host == 0) {
            if(end-(last_tld-1) < 3)
                return;
        } else if(last_tld-host == 3) {
            DWORD i;
            for(i = 0; i < ARRAY_SIZE(recognized_tlds); ++i) {
                if(!StrCmpNIW(host, recognized_tlds[i].tld_name, 3))
                    return;
            }
        } else if(last_tld-host < 3)




            return;


        *domain_start = 0;
    } else if(end+1-last_tld > 3) {




        *domain_start = (sec_last_tld+1)-host;
    } else if(last_tld - (sec_last_tld+1) < 4) {
        DWORD i;






        if(last_tld - (sec_last_tld+1) == 3) {
            for(i = 0; i < ARRAY_SIZE(recognized_tlds); ++i) {
                if(!StrCmpNIW(sec_last_tld+1, recognized_tlds[i].tld_name, 3)) {
                    const WCHAR *domain = memrchrW(host, '.', sec_last_tld-host);

                    if(!domain)
                        *domain_start = 0;
                    else
                        *domain_start = (domain+1) - host;
                    TRACE("Found domain name %s\n", debugstr_wn(host+*domain_start,
                                                        (host+host_len)-(host+*domain_start)));
                    return;
                }
            }

            *domain_start = (sec_last_tld+1)-host;
        } else {




            const WCHAR *domain = memrchrW(host, '.', sec_last_tld-host);

            if(!domain)
                *domain_start = 0;
            else
                *domain_start = (domain+1) - host;
        }
    } else {




        *domain_start = (sec_last_tld+1)-host;
    }

    TRACE("Found domain name %s\n", debugstr_wn(host+*domain_start,
                                        (host+host_len)-(host+*domain_start)));
}
