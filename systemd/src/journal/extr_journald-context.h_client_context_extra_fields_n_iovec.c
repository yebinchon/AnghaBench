
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t extra_fields_n_iovec; } ;
typedef TYPE_1__ ClientContext ;



__attribute__((used)) static inline size_t client_context_extra_fields_n_iovec(const ClientContext *c) {
        return c ? c->extra_fields_n_iovec : 0;
}
