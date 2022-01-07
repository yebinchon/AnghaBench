
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int error; } ;
struct conf {int valid_parser; int fh; TYPE_1__ parser; int fname; } ;
typedef int rstatus_t ;


 int ASSERT (int) ;
 int NC_ERROR ;
 int NC_OK ;
 int SEEK_SET ;
 int errno ;
 int fseek (int ,long,int ) ;
 int log_error (char*,int ,...) ;
 int strerror (int ) ;
 int yaml_parser_initialize (TYPE_1__*) ;
 int yaml_parser_set_input_file (TYPE_1__*,int ) ;

__attribute__((used)) static rstatus_t
conf_yaml_init(struct conf *cf)
{
    int rv;

    ASSERT(!cf->valid_parser);

    rv = fseek(cf->fh, 0L, SEEK_SET);
    if (rv < 0) {
        log_error("conf: failed to seek to the beginning of file '%s': %s",
                  cf->fname, strerror(errno));
        return NC_ERROR;
    }

    rv = yaml_parser_initialize(&cf->parser);
    if (!rv) {
        log_error("conf: failed (err %d) to initialize yaml parser",
                  cf->parser.error);
        return NC_ERROR;
    }

    yaml_parser_set_input_file(&cf->parser, cf->fh);
    cf->valid_parser = 1;

    return NC_OK;
}
