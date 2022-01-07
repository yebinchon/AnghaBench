
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u_char ;
struct TYPE_3__ {int data; } ;
typedef TYPE_1__ ngx_str_t ;
typedef int ngx_int_t ;


 int NGX_ERROR ;
 int ngx_http_tfs_atoull (int,int *,unsigned long long*) ;
 char* ngx_strchr (int,char const) ;

__attribute__((used)) static ngx_int_t
ngx_http_tfs_parse_session_id(ngx_str_t *session_id, uint64_t *app_id)
{
  char *first_pos;
  const char separator_key = '-';

  first_pos = ngx_strchr(session_id->data, separator_key);
  if (first_pos == ((void*)0)) {
      return NGX_ERROR;
  }

  return ngx_http_tfs_atoull(session_id->data,
                             ((u_char *)first_pos - session_id->data),
                             (unsigned long long *) app_id);
}
