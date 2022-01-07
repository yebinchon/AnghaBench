
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int iov_base; } ;
struct TYPE_6__ {size_t n_log_extra_fields; TYPE_2__* log_extra_fields; } ;
typedef TYPE_1__ ExecContext ;


 int assert (TYPE_1__*) ;
 int free (int ) ;
 TYPE_2__* mfree (TYPE_2__*) ;

void exec_context_free_log_extra_fields(ExecContext *c) {
        size_t l;

        assert(c);

        for (l = 0; l < c->n_log_extra_fields; l++)
                free(c->log_extra_fields[l].iov_base);
        c->log_extra_fields = mfree(c->log_extra_fields);
        c->n_log_extra_fields = 0;
}
