
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int error; } ;
struct conf {int valid_token; TYPE_1__ parser; int token; scalar_t__ valid_parser; } ;
typedef int rstatus_t ;


 int ASSERT (int) ;
 int NC_ERROR ;
 int NC_OK ;
 int log_error (char*,int ) ;
 int yaml_parser_scan (TYPE_1__*,int *) ;

__attribute__((used)) static rstatus_t
conf_token_next(struct conf *cf)
{
    int rv;

    ASSERT(cf->valid_parser && !cf->valid_token);

    rv = yaml_parser_scan(&cf->parser, &cf->token);
    if (!rv) {
        log_error("conf: failed (err %d) to scan next token", cf->parser.error);
        return NC_ERROR;
    }
    cf->valid_token = 1;

    return NC_OK;
}
