
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
struct passwd {scalar_t__ pw_uid; } ;
struct group {int gr_gid; } ;
struct TYPE_8__ {char* data; } ;
typedef TYPE_2__ ngx_str_t ;
struct TYPE_9__ {scalar_t__ user; char* username; int group; } ;
typedef TYPE_3__ ngx_core_conf_t ;
struct TYPE_10__ {TYPE_1__* args; } ;
typedef TYPE_4__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_7__ {int nelts; TYPE_2__* elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 scalar_t__ NGX_CONF_UNSET_UINT ;
 int NGX_LOG_EMERG ;
 int NGX_LOG_WARN ;
 scalar_t__ geteuid () ;
 struct group* getgrnam (char*) ;
 struct passwd* getpwnam (char const*) ;
 int ngx_conf_log_error (int ,TYPE_4__*,int ,char*,...) ;
 int ngx_errno ;
 int ngx_set_errno (int ) ;

__attribute__((used)) static char *
ngx_set_user(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_core_conf_t *ccf = conf;

    char *group;
    struct passwd *pwd;
    struct group *grp;
    ngx_str_t *value;

    if (ccf->user != (uid_t) NGX_CONF_UNSET_UINT) {
        return "is duplicate";
    }

    if (geteuid() != 0) {
        ngx_conf_log_error(NGX_LOG_WARN, cf, 0,
                           "the \"user\" directive makes sense only "
                           "if the master process runs "
                           "with super-user privileges, ignored");
        return NGX_CONF_OK;
    }

    value = cf->args->elts;

    ccf->username = (char *) value[1].data;

    ngx_set_errno(0);
    pwd = getpwnam((const char *) value[1].data);
    if (pwd == ((void*)0)) {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, ngx_errno,
                           "getpwnam(\"%s\") failed", value[1].data);
        return NGX_CONF_ERROR;
    }

    ccf->user = pwd->pw_uid;

    group = (char *) ((cf->args->nelts == 2) ? value[1].data : value[2].data);

    ngx_set_errno(0);
    grp = getgrnam(group);
    if (grp == ((void*)0)) {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, ngx_errno,
                           "getgrnam(\"%s\") failed", group);
        return NGX_CONF_ERROR;
    }

    ccf->group = grp->gr_gid;

    return NGX_CONF_OK;


}
