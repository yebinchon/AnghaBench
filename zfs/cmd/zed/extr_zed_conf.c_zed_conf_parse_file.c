
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zed_conf {int dummy; } ;


 int EINVAL ;
 int strerror (int ) ;
 int zed_log_die (char*,int ) ;

void
zed_conf_parse_file(struct zed_conf *zcp)
{
 if (!zcp)
  zed_log_die("Failed to parse config: %s", strerror(EINVAL));
}
