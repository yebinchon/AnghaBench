
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string {int data; int len; } ;
struct conf {int arg; } ;


 int LOG_VVERB ;
 struct string* array_pop (int *) ;
 int log_debug (int ,char*,int ,int ) ;
 int string_deinit (struct string*) ;

__attribute__((used)) static void
conf_pop_scalar(struct conf *cf)
{
    struct string *value;

    value = array_pop(&cf->arg);
    log_debug(LOG_VVERB, "pop '%.*s'", value->len, value->data);
    string_deinit(value);
}
