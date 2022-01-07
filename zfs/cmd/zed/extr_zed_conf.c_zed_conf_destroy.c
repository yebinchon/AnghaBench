
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zed_conf {int state_fd; int pid_fd; int * zedlets; struct zed_conf* state_file; struct zed_conf* zedlet_dir; struct zed_conf* pid_file; struct zed_conf* conf_file; } ;


 scalar_t__ ENOENT ;
 int LOG_WARNING ;
 scalar_t__ close (int) ;
 scalar_t__ errno ;
 int free (struct zed_conf*) ;
 int strerror (scalar_t__) ;
 scalar_t__ unlink (struct zed_conf*) ;
 int zed_log_msg (int ,char*,struct zed_conf*,int ) ;
 int zed_strings_destroy (int *) ;

void
zed_conf_destroy(struct zed_conf *zcp)
{
 if (!zcp)
  return;

 if (zcp->state_fd >= 0) {
  if (close(zcp->state_fd) < 0)
   zed_log_msg(LOG_WARNING,
       "Failed to close state file \"%s\": %s",
       zcp->state_file, strerror(errno));
  zcp->state_fd = -1;
 }
 if (zcp->pid_file) {
  if ((unlink(zcp->pid_file) < 0) && (errno != ENOENT))
   zed_log_msg(LOG_WARNING,
       "Failed to remove PID file \"%s\": %s",
       zcp->pid_file, strerror(errno));
 }
 if (zcp->pid_fd >= 0) {
  if (close(zcp->pid_fd) < 0)
   zed_log_msg(LOG_WARNING,
       "Failed to close PID file \"%s\": %s",
       zcp->pid_file, strerror(errno));
  zcp->pid_fd = -1;
 }
 if (zcp->conf_file) {
  free(zcp->conf_file);
  zcp->conf_file = ((void*)0);
 }
 if (zcp->pid_file) {
  free(zcp->pid_file);
  zcp->pid_file = ((void*)0);
 }
 if (zcp->zedlet_dir) {
  free(zcp->zedlet_dir);
  zcp->zedlet_dir = ((void*)0);
 }
 if (zcp->state_file) {
  free(zcp->state_file);
  zcp->state_file = ((void*)0);
 }
 if (zcp->zedlets) {
  zed_strings_destroy(zcp->zedlets);
  zcp->zedlets = ((void*)0);
 }
 free(zcp);
}
