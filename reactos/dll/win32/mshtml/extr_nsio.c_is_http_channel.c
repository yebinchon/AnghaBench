
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* uri; } ;
typedef TYPE_2__ nsChannel ;
struct TYPE_4__ {scalar_t__ scheme; } ;
typedef int BOOL ;


 scalar_t__ URL_SCHEME_HTTP ;
 scalar_t__ URL_SCHEME_HTTPS ;

__attribute__((used)) static inline BOOL is_http_channel(nsChannel *This)
{
    return This->uri->scheme == URL_SCHEME_HTTP || This->uri->scheme == URL_SCHEME_HTTPS;
}
