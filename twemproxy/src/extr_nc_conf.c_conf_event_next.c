
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int error; } ;
struct conf {int valid_event; TYPE_1__ parser; int event; scalar_t__ valid_parser; } ;
typedef int rstatus_t ;


 int ASSERT (int) ;
 int NC_ERROR ;
 int NC_OK ;
 int log_error (char*,int ) ;
 int yaml_parser_parse (TYPE_1__*,int *) ;

__attribute__((used)) static rstatus_t
conf_event_next(struct conf *cf)
{
    int rv;

    ASSERT(cf->valid_parser && !cf->valid_event);

    rv = yaml_parser_parse(&cf->parser, &cf->event);
    if (!rv) {
        log_error("conf: failed (err %d) to get next event", cf->parser.error);
        return NC_ERROR;
    }
    cf->valid_event = 1;

    return NC_OK;
}
