
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct conf {scalar_t__ depth; TYPE_1__ event; int parsed; scalar_t__ sound; } ;
typedef int rstatus_t ;


 int ASSERT (int) ;
 int LOG_VVERB ;
 int NC_OK ;
 int NOT_REACHED () ;


 int conf_event_done (struct conf*) ;
 int conf_event_next (struct conf*) ;
 int conf_yaml_deinit (struct conf*) ;
 int log_debug (int ,char*,int) ;

__attribute__((used)) static rstatus_t
conf_end_parse(struct conf *cf)
{
    rstatus_t status;
    bool done;

    ASSERT(cf->sound && !cf->parsed);
    ASSERT(cf->depth == 0);

    done = 0;
    do {
        status = conf_event_next(cf);
        if (status != NC_OK) {
            return status;
        }

        log_debug(LOG_VVERB, "next end event %d", cf->event.type);

        switch (cf->event.type) {
        case 128:
            done = 1;
            break;

        case 129:
            break;

        default:
            NOT_REACHED();
        }

        conf_event_done(cf);
    } while (!done);

    conf_yaml_deinit(cf);

    return NC_OK;
}
