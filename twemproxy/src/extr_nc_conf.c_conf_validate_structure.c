
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int type; } ;
struct conf {int fname; TYPE_1__ event; } ;
typedef scalar_t__ rstatus_t ;


 int ASSERT (int) ;
 int CONF_MAX_DEPTH ;
 int CONF_ROOT_DEPTH ;
 int LOG_VVERB ;
 scalar_t__ NC_ERROR ;
 scalar_t__ NC_OK ;
 int NOT_REACHED () ;
 int conf_event_done (struct conf*) ;
 scalar_t__ conf_event_next (struct conf*) ;
 int conf_yaml_deinit (struct conf*) ;
 scalar_t__ conf_yaml_init (struct conf*) ;
 int log_debug (int ,char*,int,int,int) ;
 int log_error (char*,int ,...) ;

__attribute__((used)) static rstatus_t
conf_validate_structure(struct conf *cf)
{
    rstatus_t status;
    int type, depth;
    uint32_t i, count[CONF_MAX_DEPTH + 1];
    bool done, error, seq;

    status = conf_yaml_init(cf);
    if (status != NC_OK) {
        return status;
    }

    done = 0;
    error = 0;
    seq = 0;
    depth = 0;
    for (i = 0; i < CONF_MAX_DEPTH + 1; i++) {
        count[i] = 0;
    }
    do {
        status = conf_event_next(cf);
        if (status != NC_OK) {
            return status;
        }

        type = cf->event.type;

        log_debug(LOG_VVERB, "next event %d depth %d seq %d", type, depth, seq);

        switch (type) {
        case 128:
        case 135:
            break;

        case 136:
            break;

        case 129:
            done = 1;
            break;

        case 133:
            if (depth == CONF_ROOT_DEPTH && count[depth] != 1) {
                error = 1;
                log_error("conf: '%s' has more than one \"key:value\" at depth"
                          " %d", cf->fname, depth);
            } else if (depth >= CONF_MAX_DEPTH) {
                error = 1;
                log_error("conf: '%s' has a depth greater than %d", cf->fname,
                          CONF_MAX_DEPTH);
            }
            depth++;
            break;

        case 134:
            if (depth == CONF_MAX_DEPTH) {
                if (seq) {
                    seq = 0;
                } else {
                    error = 1;
                    log_error("conf: '%s' missing sequence directive at depth "
                              "%d", cf->fname, depth);
                }
            }
            depth--;
            count[depth] = 0;
            break;

        case 130:
            if (seq) {
                error = 1;
                log_error("conf: '%s' has more than one sequence directive",
                          cf->fname);
            } else if (depth != CONF_MAX_DEPTH) {
                error = 1;
                log_error("conf: '%s' has sequence at depth %d instead of %d",
                          cf->fname, depth, CONF_MAX_DEPTH);
            } else if (count[depth] != 1) {
                error = 1;
                log_error("conf: '%s' has invalid \"key:value\" at depth %d",
                          cf->fname, depth);
            }
            seq = 1;
            break;

        case 131:
            ASSERT(depth == CONF_MAX_DEPTH);
            count[depth] = 0;
            break;

        case 132:
            if (depth == 0) {
                error = 1;
                log_error("conf: '%s' has invalid empty \"key:\" at depth %d",
                          cf->fname, depth);
            } else if (depth == CONF_ROOT_DEPTH && count[depth] != 0) {
                error = 1;
                log_error("conf: '%s' has invalid mapping \"key:\" at depth %d",
                          cf->fname, depth);
            } else if (depth == CONF_MAX_DEPTH && count[depth] == 2) {

                count[depth] = 0;
            }
            count[depth]++;
            break;

        default:
            NOT_REACHED();
        }

        conf_event_done(cf);
    } while (!done && !error);

    conf_yaml_deinit(cf);

    return !error ? NC_OK : NC_ERROR;
}
