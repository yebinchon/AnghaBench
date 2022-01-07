
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conf {int * fh; } ;
typedef scalar_t__ rstatus_t ;


 scalar_t__ NC_OK ;
 int conf_destroy (struct conf*) ;
 int conf_dump (struct conf*) ;
 struct conf* conf_open (char*) ;
 scalar_t__ conf_parse (struct conf*) ;
 scalar_t__ conf_post_validate (struct conf*) ;
 scalar_t__ conf_pre_validate (struct conf*) ;
 int fclose (int *) ;
 int log_stderr (char*,char*) ;

struct conf *
conf_create(char *filename)
{
    rstatus_t status;
    struct conf *cf;

    cf = conf_open(filename);
    if (cf == ((void*)0)) {
        return ((void*)0);
    }


    status = conf_pre_validate(cf);
    if (status != NC_OK) {
        goto error;
    }


    status = conf_parse(cf);
    if (status != NC_OK) {
        goto error;
    }


    status = conf_post_validate(cf);
    if (status != NC_OK) {
        goto error;
    }

    conf_dump(cf);

    fclose(cf->fh);
    cf->fh = ((void*)0);

    return cf;

error:
    log_stderr("nutcracker: configuration file '%s' syntax is invalid",
               filename);
    fclose(cf->fh);
    cf->fh = ((void*)0);
    conf_destroy(cf);
    return ((void*)0);
}
