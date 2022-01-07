
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct optioninfo {int dummy; } ;


 char const* config_text ;

void of_config(const struct optioninfo *oi, const char *arg, const char *arg2) {
  config_text= arg;
}
