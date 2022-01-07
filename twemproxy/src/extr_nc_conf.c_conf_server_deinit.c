
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conf_server {scalar_t__ valid; int addrstr; int name; int pname; } ;


 int LOG_VVERB ;
 int log_debug (int ,char*,struct conf_server*) ;
 int string_deinit (int *) ;

__attribute__((used)) static void
conf_server_deinit(struct conf_server *cs)
{
    string_deinit(&cs->pname);
    string_deinit(&cs->name);
    string_deinit(&cs->addrstr);
    cs->valid = 0;
    log_debug(LOG_VVERB, "deinit conf server %p", cs);
}
