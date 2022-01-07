
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ terminate_callback_t ;
typedef scalar_t__ sway_log_importance_t ;


 scalar_t__ SWAY_LOG_IMPORTANCE_LAST ;
 scalar_t__ log_importance ;
 scalar_t__ log_terminate ;

void sway_log_init(sway_log_importance_t verbosity, terminate_callback_t callback) {
 if (verbosity < SWAY_LOG_IMPORTANCE_LAST) {
  log_importance = verbosity;
 }
 if (callback) {
  log_terminate = callback;
 }
}
