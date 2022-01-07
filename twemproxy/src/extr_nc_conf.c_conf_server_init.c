
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conf_server {scalar_t__ valid; int info; scalar_t__ weight; scalar_t__ port; int addrstr; int name; int pname; } ;


 int LOG_VVERB ;
 int log_debug (int ,char*,struct conf_server*) ;
 int memset (int *,int ,int) ;
 int string_init (int *) ;

__attribute__((used)) static void
conf_server_init(struct conf_server *cs)
{
    string_init(&cs->pname);
    string_init(&cs->name);
    string_init(&cs->addrstr);
    cs->port = 0;
    cs->weight = 0;

    memset(&cs->info, 0, sizeof(cs->info));

    cs->valid = 0;

    log_debug(LOG_VVERB, "init conf server %p", cs);
}
