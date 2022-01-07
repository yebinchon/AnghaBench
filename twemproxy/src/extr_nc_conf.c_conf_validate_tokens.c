
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct conf {int fname; TYPE_1__ token; } ;
typedef scalar_t__ rstatus_t ;


 int LOG_VVERB ;
 scalar_t__ NC_ERROR ;
 scalar_t__ NC_OK ;
 int conf_token_done (struct conf*) ;
 scalar_t__ conf_token_next (struct conf*) ;
 int conf_yaml_deinit (struct conf*) ;
 scalar_t__ conf_yaml_init (struct conf*) ;
 int log_debug (int ,char*,int ) ;
 int log_error (char*,int) ;

__attribute__((used)) static rstatus_t
conf_validate_tokens(struct conf *cf)
{
    rstatus_t status;
    bool done, error;
    int type;

    status = conf_yaml_init(cf);
    if (status != NC_OK) {
        return status;
    }

    done = 0;
    error = 0;
    do {
        status = conf_token_next(cf);
        if (status != NC_OK) {
            return status;
        }
        type = cf->token.type;

        switch (type) {
        case 135:
            error = 1;
            log_error("conf: no token (%d) is disallowed", type);
            break;

        case 128:
            error = 1;
            log_error("conf: version directive token (%d) is disallowed", type);
            break;

        case 131:
            error = 1;
            log_error("conf: tag directive token (%d) is disallowed", type);
            break;

        case 142:
            error = 1;
            log_error("conf: document start token (%d) is disallowed", type);
            break;

        case 143:
            error = 1;
            log_error("conf: document end token (%d) is disallowed", type);
            break;

        case 137:
            error = 1;
            log_error("conf: flow sequence start token (%d) is disallowed", type);
            break;

        case 138:
            error = 1;
            log_error("conf: flow sequence end token (%d) is disallowed", type);
            break;

        case 139:
            error = 1;
            log_error("conf: flow mapping start token (%d) is disallowed", type);
            break;

        case 140:
            error = 1;
            log_error("conf: flow mapping end token (%d) is disallowed", type);
            break;

        case 141:
            error = 1;
            log_error("conf: flow entry token (%d) is disallowed", type);
            break;

        case 149:
            error = 1;
            log_error("conf: alias token (%d) is disallowed", type);
            break;

        case 148:
            error = 1;
            log_error("conf: anchor token (%d) is disallowed", type);
            break;

        case 130:
            error = 1;
            log_error("conf: tag token (%d) is disallowed", type);
            break;

        case 144:
        case 145:
        case 147:
        case 146:
            break;

        case 136:
        case 129:
        case 134:
            break;

        case 132:
            break;

        case 133:
            done = 1;
            log_debug(LOG_VVERB, "conf '%s' has valid tokens", cf->fname);
            break;

        default:
            error = 1;
            log_error("conf: unknown token (%d) is disallowed", type);
            break;
        }

        conf_token_done(cf);
    } while (!done && !error);

    conf_yaml_deinit(cf);

    return !error ? NC_OK : NC_ERROR;
}
