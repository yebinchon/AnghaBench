
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct string {scalar_t__ data; } ;
struct conf {int arg; } ;
struct command {int offset; } ;
typedef scalar_t__ rstatus_t ;


 char* CONF_ERROR ;
 char* CONF_OK ;
 scalar_t__ CONF_UNSET_PTR ;
 scalar_t__ NC_OK ;
 struct string* array_top (int *) ;
 scalar_t__ string_duplicate (struct string*,struct string*) ;

char *
conf_set_string(struct conf *cf, struct command *cmd, void *conf)
{
    rstatus_t status;
    uint8_t *p;
    struct string *field, *value;

    p = conf;
    field = (struct string *)(p + cmd->offset);

    if (field->data != CONF_UNSET_PTR) {
        return "is a duplicate";
    }

    value = array_top(&cf->arg);

    status = string_duplicate(field, value);
    if (status != NC_OK) {
        return CONF_ERROR;
    }

    return CONF_OK;
}
