
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conf {int parsed; int arg; scalar_t__ sound; } ;
typedef scalar_t__ rstatus_t ;


 int ASSERT (int) ;
 scalar_t__ NC_OK ;
 scalar_t__ array_n (int *) ;
 scalar_t__ conf_begin_parse (struct conf*) ;
 scalar_t__ conf_end_parse (struct conf*) ;
 scalar_t__ conf_parse_core (struct conf*,int *) ;

__attribute__((used)) static rstatus_t
conf_parse(struct conf *cf)
{
    rstatus_t status;

    ASSERT(cf->sound && !cf->parsed);
    ASSERT(array_n(&cf->arg) == 0);

    status = conf_begin_parse(cf);
    if (status != NC_OK) {
        return status;
    }

    status = conf_parse_core(cf, ((void*)0));
    if (status != NC_OK) {
        return status;
    }

    status = conf_end_parse(cf);
    if (status != NC_OK) {
        return status;
    }

    cf->parsed = 1;

    return NC_OK;
}
