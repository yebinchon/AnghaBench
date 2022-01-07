
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ctx; } ;
struct TYPE_6__ {TYPE_1__ dnstls_data; } ;
typedef TYPE_2__ Manager ;


 int ENOMEM ;
 int ERR_error_string (int ,int *) ;
 int ERR_get_error () ;
 int ERR_load_crypto_strings () ;
 int SSL_CTX_new (int ) ;
 int SSL_CTX_set_default_verify_paths (int ) ;
 int SSL_CTX_set_min_proto_version (int ,int ) ;
 int SSL_CTX_set_options (int ,int ) ;
 int SSL_OP_NO_COMPRESSION ;
 int SSL_load_error_strings () ;
 int TLS1_2_VERSION ;
 int TLS_client_method () ;
 int assert (TYPE_2__*) ;
 int log_warning (char*,int ) ;

int dnstls_manager_init(Manager *manager) {
        int r;
        assert(manager);

        ERR_load_crypto_strings();
        SSL_load_error_strings();
        manager->dnstls_data.ctx = SSL_CTX_new(TLS_client_method());

        if (!manager->dnstls_data.ctx)
                return -ENOMEM;

        SSL_CTX_set_min_proto_version(manager->dnstls_data.ctx, TLS1_2_VERSION);
        SSL_CTX_set_options(manager->dnstls_data.ctx, SSL_OP_NO_COMPRESSION);
        r = SSL_CTX_set_default_verify_paths(manager->dnstls_data.ctx);
        if (r < 0)
                log_warning("Failed to load system trust store: %s", ERR_error_string(ERR_get_error(), ((void*)0)));

        return 0;
}
