
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_file_info_t ;
struct TYPE_3__ {int log; } ;
typedef TYPE_1__ ngx_cycle_t ;


 scalar_t__ EEXIST ;
 scalar_t__ ENOENT ;
 int NGX_LOG_EMERG ;
 int NGX_PIPE_DIR_ACCESS ;
 scalar_t__ errno ;
 int exit (int) ;
 scalar_t__ ngx_create_dir (char*,int ) ;
 int ngx_errno ;
 scalar_t__ ngx_file_info (char*,int *) ;
 int ngx_log_error (int ,int ,int ,char*,char*) ;
 int ngx_memcpy (char*,char*,int) ;
 char* strchr (char*,char) ;

__attribute__((used)) static void
ngx_pipe_create_subdirs(char *filename, ngx_cycle_t *cycle)
{
    ngx_file_info_t stat_buf;
    char dirname[1024];
    char *p;

    for (p = filename; (p = strchr(p, '/')); p++)
    {
        if (p == filename) {
            continue;
        }

        ngx_memcpy(dirname, filename, p - filename);
        dirname[p-filename] = '\0';

        if (ngx_file_info(dirname, &stat_buf) < 0) {
            if (errno != ENOENT) {
                ngx_log_error(NGX_LOG_EMERG, cycle->log, ngx_errno,
                              "stat [%s] failed", dirname);
                exit(2);

            } else {
                if ((ngx_create_dir(dirname, NGX_PIPE_DIR_ACCESS) < 0) && (errno != EEXIST)) {
                    ngx_log_error(NGX_LOG_EMERG, cycle->log, ngx_errno,
                                  "mkdir [%s] failed", dirname);
                    exit(2);
                }
            }
        }
    }
}
