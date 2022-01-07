
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zed_conf {int pid_fd; int state_fd; int zevent_fd; void* state_file; void* zedlet_dir; void* pid_file; void* conf_file; int * zfs_hdl; int * zedlets; int max_events; int min_events; int syslog_facility; } ;


 int LOG_DAEMON ;
 int ZED_CONF_FILE ;
 int ZED_MAX_EVENTS ;
 int ZED_MIN_EVENTS ;
 int ZED_PID_FILE ;
 int ZED_STATE_FILE ;
 int ZED_ZEDLET_DIR ;
 struct zed_conf* calloc (int,int) ;
 int errno ;
 void* strdup (int ) ;
 int strerror (int ) ;
 int zed_log_die (char*,int ) ;

struct zed_conf *
zed_conf_create(void)
{
 struct zed_conf *zcp;

 zcp = calloc(1, sizeof (*zcp));
 if (!zcp)
  goto nomem;

 zcp->syslog_facility = LOG_DAEMON;
 zcp->min_events = ZED_MIN_EVENTS;
 zcp->max_events = ZED_MAX_EVENTS;
 zcp->pid_fd = -1;
 zcp->zedlets = ((void*)0);
 zcp->state_fd = -1;
 zcp->zfs_hdl = ((void*)0);
 zcp->zevent_fd = -1;

 if (!(zcp->conf_file = strdup(ZED_CONF_FILE)))
  goto nomem;

 if (!(zcp->pid_file = strdup(ZED_PID_FILE)))
  goto nomem;

 if (!(zcp->zedlet_dir = strdup(ZED_ZEDLET_DIR)))
  goto nomem;

 if (!(zcp->state_file = strdup(ZED_STATE_FILE)))
  goto nomem;

 return (zcp);

nomem:
 zed_log_die("Failed to create conf: %s", strerror(errno));
 return (((void*)0));
}
