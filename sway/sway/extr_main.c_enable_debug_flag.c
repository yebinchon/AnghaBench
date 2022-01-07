
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int noatomic; int txn_wait; int txn_timings; int damage; } ;
struct TYPE_3__ {int txn_timeout_ms; } ;


 int DAMAGE_HIGHLIGHT ;
 int DAMAGE_RERENDER ;
 int SWAY_ERROR ;
 int atoi (char const*) ;
 TYPE_2__ debug ;
 TYPE_1__ server ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int sway_log (int ,char*,char const*) ;

void enable_debug_flag(const char *flag) {
 if (strcmp(flag, "damage=highlight") == 0) {
  debug.damage = DAMAGE_HIGHLIGHT;
 } else if (strcmp(flag, "damage=rerender") == 0) {
  debug.damage = DAMAGE_RERENDER;
 } else if (strcmp(flag, "noatomic") == 0) {
  debug.noatomic = 1;
 } else if (strcmp(flag, "txn-wait") == 0) {
  debug.txn_wait = 1;
 } else if (strcmp(flag, "txn-timings") == 0) {
  debug.txn_timings = 1;
 } else if (strncmp(flag, "txn-timeout=", 12) == 0) {
  server.txn_timeout_ms = atoi(&flag[12]);
 } else {
  sway_log(SWAY_ERROR, "Unknown debug flag: %s", flag);
 }
}
