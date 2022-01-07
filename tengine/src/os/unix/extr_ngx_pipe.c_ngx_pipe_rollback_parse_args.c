
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint32_t ;
typedef char u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_16__ {char* data; int len; } ;
typedef TYPE_2__ ngx_str_t ;
struct TYPE_17__ {char* logname; int backup_num; int log_max_size; int interval; char* suitpath; int adjust_time; int adjust_time_raw; int ** backup; int time_now; } ;
typedef TYPE_3__ ngx_pipe_rollback_conf_t ;
struct TYPE_18__ {TYPE_1__* argv; } ;
typedef TYPE_4__ ngx_open_pipe_t ;
typedef size_t ngx_int_t ;
struct TYPE_19__ {int log; int pool; } ;
typedef TYPE_5__ ngx_cycle_t ;
struct TYPE_15__ {int nelts; char** elts; } ;


 size_t MAX_BACKUP_NUM ;
 size_t NGX_ERROR ;
 int NGX_LOG_EMERG ;
 int NGX_LOG_INFO ;
 scalar_t__ NGX_OK ;
 int memset (int **,int ,int) ;
 void* ngx_atoi (char*,int) ;
 scalar_t__ ngx_conf_full_name (TYPE_5__*,TYPE_2__*,int ) ;
 int ngx_crc32_short (char*,int) ;
 int ngx_errno ;
 int ngx_log_error (int ,int ,int ,char*,...) ;
 int ngx_parse_offset (TYPE_2__*) ;
 void* ngx_parse_time (TYPE_2__*,int) ;
 int * ngx_pcalloc (int ,size_t) ;
 int ngx_pipe_create_suitpath (TYPE_5__*,TYPE_3__*) ;
 int ngx_pipe_get_now_sec () ;
 int ngx_snprintf (char*,size_t,char*,char*,size_t) ;
 int ngx_strlen (char*) ;
 scalar_t__ ngx_strncmp (char*,char*,int) ;
 int rand () ;
 int srand (int ) ;

ngx_int_t
ngx_pipe_rollback_parse_args(ngx_cycle_t *cycle, ngx_open_pipe_t *op,
    ngx_pipe_rollback_conf_t *rbcf)
{
    u_char **argv;
    ngx_uint_t i;
    ngx_int_t j;
    size_t len;
    ngx_str_t filename;
    ngx_str_t value;
    uint32_t hash;

    if (op->argv->nelts < 3) {

        return NGX_ERROR;
    }


    argv = op->argv->elts;


    filename.data = (u_char *) argv[1];
    filename.len = ngx_strlen(filename.data);
    if (ngx_conf_full_name(cycle, &filename, 0) != NGX_OK) {
        ngx_log_error(NGX_LOG_EMERG, cycle->log, ngx_errno,
                      "get fullname failed");
        return NGX_ERROR;
    }
    rbcf->logname = (char *) filename.data;
    rbcf->backup_num = 1;
    rbcf->log_max_size = -1;
    rbcf->interval = -1;
    rbcf->suitpath = ((void*)0);
    rbcf->adjust_time = 60;
    rbcf->adjust_time_raw = 60;
    memset(rbcf->backup, 0, sizeof(rbcf->backup));

    for (i = 2; i < op->argv->nelts; i++) {
        if (argv[i] == ((void*)0)) {
            break;
        }
        if (ngx_strncmp((u_char *) "interval=", argv[i], 9) == 0) {
            value.data = argv[i] + 9;
            value.len = ngx_strlen((char *) argv[i]) - 9;
            rbcf->interval = ngx_parse_time(&value, 1);
            if (rbcf->interval <= 0) {
                rbcf->interval = -1;
            }

        } else if (ngx_strncmp((u_char *) "baknum=", argv[i], 7) == 0) {
            rbcf->backup_num = ngx_atoi(argv[i] + 7,
                                        ngx_strlen((char *) argv[i]) - 7);
            if (rbcf->backup_num <= 0) {
                rbcf->backup_num = 1;

            } else if (MAX_BACKUP_NUM < (size_t)rbcf->backup_num) {
                rbcf->backup_num = MAX_BACKUP_NUM;
            }

        } else if (ngx_strncmp((u_char *) "maxsize=", argv[i], 8) == 0) {
            value.data = argv[i] + 8;
            value.len = ngx_strlen((char *) argv[i]) - 8;
            rbcf->log_max_size = ngx_parse_offset(&value);
            if (rbcf->log_max_size <= 0) {
                rbcf->log_max_size = -1;
            }
        } else if (ngx_strncmp((u_char *) "suitpath=", argv[i], 9) == 0) {
            filename.data = (u_char*)(argv[i] + 9);
            filename.len = ngx_strlen(filename.data);
            if (ngx_conf_full_name(cycle, &filename, 0) != NGX_OK) {
                ngx_log_error(NGX_LOG_EMERG, cycle->log, ngx_errno,
                              "get fullname failed");
                return NGX_ERROR;
            }
            rbcf->suitpath = (char*)filename.data;

            rbcf->time_now = ngx_pipe_get_now_sec();
            ngx_pipe_create_suitpath(cycle, rbcf);
        } else if (ngx_strncmp((u_char *) "adjust=", argv[i], 7) == 0) {
            value.data =argv[i] + 7;
            value.len = ngx_strlen((char *) argv[i]) - 7;
            rbcf->adjust_time_raw = ngx_parse_time(&value, 1);
            if (rbcf->adjust_time_raw < 1) {
                rbcf->adjust_time_raw = 1;
            }
        }
    }

    len = ngx_strlen(rbcf->logname) + 5;
    for (j = 0; j < rbcf->backup_num; j++) {
        rbcf->backup[j] = ngx_pcalloc(cycle->pool, len);
        if (rbcf->backup[j] == ((void*)0)) {
            return NGX_ERROR;
        }
        ngx_snprintf((u_char *) rbcf->backup[j], len, "%s.%i%Z", rbcf->logname, j + 1);
    }


    hash = ngx_crc32_short((u_char*)rbcf->logname, ngx_strlen(rbcf->logname));
    srand(hash);
    rbcf->adjust_time = rand() % rbcf->adjust_time_raw;

    ngx_log_error(NGX_LOG_INFO, cycle->log, 0,
                  "log rollback param: num [%i], interval %i(S), size %i(B), adjust %i/%i(S)",
                  rbcf->backup_num, rbcf->interval, rbcf->log_max_size, rbcf->adjust_time, rbcf->adjust_time_raw);

    return NGX_OK;
}
