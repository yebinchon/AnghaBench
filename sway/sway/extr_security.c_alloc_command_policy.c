
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command_policy {scalar_t__ context; int command; } ;


 int free (struct command_policy*) ;
 struct command_policy* malloc (int) ;
 int strdup (char const*) ;

struct command_policy *alloc_command_policy(const char *command) {
 struct command_policy *policy = malloc(sizeof(struct command_policy));
 if (!policy) {
  return ((void*)0);
 }
 policy->command = strdup(command);
 if (!policy->command) {
  free(policy);
  return ((void*)0);
 }
 policy->context = 0;
 return policy;
}
