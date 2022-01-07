
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct instance {int conf_filename; } ;
struct conf {int dummy; } ;


 struct conf* conf_create (int ) ;
 int conf_destroy (struct conf*) ;
 int log_stderr (char*,int ) ;

__attribute__((used)) static bool
nc_test_conf(struct instance *nci)
{
    struct conf *cf;

    cf = conf_create(nci->conf_filename);
    if (cf == ((void*)0)) {
        log_stderr("nutcracker: configuration file '%s' syntax is invalid",
                   nci->conf_filename);
        return 0;
    }

    conf_destroy(cf);

    log_stderr("nutcracker: configuration file '%s' syntax is ok",
               nci->conf_filename);
    return 1;
}
