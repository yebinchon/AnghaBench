
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string {int dummy; } ;
struct conf_pool {int dummy; } ;
struct conf {char* fname; scalar_t__ valid; scalar_t__ parsed; scalar_t__ sound; scalar_t__ valid_token; scalar_t__ valid_event; scalar_t__ valid_parser; scalar_t__ seq; scalar_t__ depth; int * fh; int arg; int pool; } ;
typedef scalar_t__ rstatus_t ;
typedef int FILE ;


 int CONF_DEFAULT_ARGS ;
 int CONF_DEFAULT_POOL ;
 int LOG_VVERB ;
 scalar_t__ NC_OK ;
 int array_deinit (int *) ;
 scalar_t__ array_init (int *,int ,int) ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int log_debug (int ,char*,char*) ;
 int log_error (char*,char*,int ) ;
 struct conf* nc_alloc (int) ;
 int nc_free (struct conf*) ;
 int strerror (int ) ;

__attribute__((used)) static struct conf *
conf_open(char *filename)
{
    rstatus_t status;
    struct conf *cf;
    FILE *fh;

    fh = fopen(filename, "r");
    if (fh == ((void*)0)) {
        log_error("conf: failed to open configuration '%s': %s", filename,
                  strerror(errno));
        return ((void*)0);
    }

    cf = nc_alloc(sizeof(*cf));
    if (cf == ((void*)0)) {
        fclose(fh);
        return ((void*)0);
    }

    status = array_init(&cf->arg, CONF_DEFAULT_ARGS, sizeof(struct string));
    if (status != NC_OK) {
        nc_free(cf);
        fclose(fh);
        return ((void*)0);
    }

    status = array_init(&cf->pool, CONF_DEFAULT_POOL, sizeof(struct conf_pool));
    if (status != NC_OK) {
        array_deinit(&cf->arg);
        nc_free(cf);
        fclose(fh);
        return ((void*)0);
    }

    cf->fname = filename;
    cf->fh = fh;
    cf->depth = 0;

    cf->seq = 0;
    cf->valid_parser = 0;
    cf->valid_event = 0;
    cf->valid_token = 0;
    cf->sound = 0;
    cf->parsed = 0;
    cf->valid = 0;

    log_debug(LOG_VVERB, "opened conf '%s'", filename);

    return cf;
}
