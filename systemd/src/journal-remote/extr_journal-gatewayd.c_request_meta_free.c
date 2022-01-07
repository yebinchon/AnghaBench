
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct MHD_Connection {int dummy; } ;
typedef enum MHD_RequestTerminationCode { ____Placeholder_MHD_RequestTerminationCode } MHD_RequestTerminationCode ;
struct TYPE_3__ {struct TYPE_3__* cursor; int tmp; int journal; } ;
typedef TYPE_1__ RequestMeta ;


 int free (TYPE_1__*) ;
 int safe_fclose (int ) ;
 int sd_journal_close (int ) ;

__attribute__((used)) static void request_meta_free(
                void *cls,
                struct MHD_Connection *connection,
                void **connection_cls,
                enum MHD_RequestTerminationCode toe) {

        RequestMeta *m = *connection_cls;

        if (!m)
                return;

        sd_journal_close(m->journal);

        safe_fclose(m->tmp);

        free(m->cursor);
        free(m);
}
