
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct string {int dummy; } ;
struct TYPE_5__ {scalar_t__ length; int * value; } ;
struct TYPE_4__ {TYPE_2__ scalar; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
struct conf {int arg; TYPE_3__ event; } ;
typedef scalar_t__ rstatus_t ;


 int LOG_VVERB ;
 scalar_t__ NC_ENOMEM ;
 scalar_t__ NC_ERROR ;
 scalar_t__ NC_OK ;
 int array_pop (int *) ;
 struct string* array_push (int *) ;
 int log_debug (int ,char*,scalar_t__,int *) ;
 scalar_t__ string_copy (struct string*,int *,scalar_t__) ;
 int string_init (struct string*) ;

__attribute__((used)) static rstatus_t
conf_push_scalar(struct conf *cf)
{
    rstatus_t status;
    struct string *value;
    uint8_t *scalar;
    uint32_t scalar_len;

    scalar = cf->event.data.scalar.value;
    scalar_len = (uint32_t)cf->event.data.scalar.length;
    if (scalar_len == 0) {
        return NC_ERROR;
    }

    log_debug(LOG_VVERB, "push '%.*s'", scalar_len, scalar);

    value = array_push(&cf->arg);
    if (value == ((void*)0)) {
        return NC_ENOMEM;
    }
    string_init(value);

    status = string_copy(value, scalar, scalar_len);
    if (status != NC_OK) {
        array_pop(&cf->arg);
        return status;
    }

    return NC_OK;
}
