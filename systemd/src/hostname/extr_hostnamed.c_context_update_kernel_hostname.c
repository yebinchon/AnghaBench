
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char** data; } ;
typedef TYPE_1__ Context ;


 char* FALLBACK_HOSTNAME ;
 size_t PROP_HOSTNAME ;
 size_t PROP_STATIC_HOSTNAME ;
 int STRV_MAKE (char*) ;
 int assert (TYPE_1__*) ;
 int errno ;
 scalar_t__ hostname_is_useful (char const*) ;
 int isempty (char const*) ;
 int nscd_flush_cache (int ) ;
 scalar_t__ sethostname_idempotent (char const*) ;

__attribute__((used)) static int context_update_kernel_hostname(Context *c) {
        const char *static_hn;
        const char *hn;

        assert(c);

        static_hn = c->data[PROP_STATIC_HOSTNAME];



        if (hostname_is_useful(static_hn))
                hn = static_hn;


        else if (!isempty(c->data[PROP_HOSTNAME]))
                hn = c->data[PROP_HOSTNAME];


        else if (!isempty(static_hn))
                hn = static_hn;


        else
                hn = FALLBACK_HOSTNAME;

        if (sethostname_idempotent(hn) < 0)
                return -errno;

        (void) nscd_flush_cache(STRV_MAKE("hosts"));

        return 0;
}
