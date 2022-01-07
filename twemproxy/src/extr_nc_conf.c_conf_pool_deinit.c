
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ len; } ;
struct TYPE_3__ {TYPE_2__ name; TYPE_2__ pname; } ;
struct conf_pool {int server; TYPE_2__ redis_auth; TYPE_1__ listen; TYPE_2__ name; } ;


 int LOG_VVERB ;
 int array_deinit (int *) ;
 scalar_t__ array_n (int *) ;
 int array_pop (int *) ;
 int conf_server_deinit (int ) ;
 int log_debug (int ,char*,struct conf_pool*) ;
 int string_deinit (TYPE_2__*) ;

__attribute__((used)) static void
conf_pool_deinit(struct conf_pool *cp)
{
    string_deinit(&cp->name);

    string_deinit(&cp->listen.pname);
    string_deinit(&cp->listen.name);

    if (cp->redis_auth.len > 0) {
        string_deinit(&cp->redis_auth);
    }

    while (array_n(&cp->server) != 0) {
        conf_server_deinit(array_pop(&cp->server));
    }
    array_deinit(&cp->server);

    log_debug(LOG_VVERB, "deinit conf pool %p", cp);
}
