
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct conf {scalar_t__ depth; TYPE_1__ event; int parsed; scalar_t__ sound; } ;
typedef scalar_t__ rstatus_t ;


 int ASSERT (int) ;
 scalar_t__ CONF_MAX_DEPTH ;
 int LOG_VVERB ;
 scalar_t__ NC_OK ;
 int NOT_REACHED () ;



 int conf_event_done (struct conf*) ;
 scalar_t__ conf_event_next (struct conf*) ;
 scalar_t__ conf_yaml_init (struct conf*) ;
 int log_debug (int ,char*,int) ;

__attribute__((used)) static rstatus_t
conf_begin_parse(struct conf *cf)
{
    rstatus_t status;
    bool done;

    ASSERT(cf->sound && !cf->parsed);
    ASSERT(cf->depth == 0);

    status = conf_yaml_init(cf);
    if (status != NC_OK) {
        return status;
    }

    done = 0;
    do {
        status = conf_event_next(cf);
        if (status != NC_OK) {
            return status;
        }

        log_debug(LOG_VVERB, "next begin event %d", cf->event.type);

        switch (cf->event.type) {
        case 128:
        case 130:
            break;

        case 129:
            ASSERT(cf->depth < CONF_MAX_DEPTH);
            cf->depth++;
            done = 1;
            break;

        default:
            NOT_REACHED();
        }

        conf_event_done(cf);

    } while (!done);

    return NC_OK;
}
