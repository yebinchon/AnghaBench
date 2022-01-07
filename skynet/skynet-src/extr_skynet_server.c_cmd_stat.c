
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct skynet_context {char* result; int endless; double message_count; scalar_t__ cpu_start; scalar_t__ profile; scalar_t__ cpu_cost; int queue; } ;


 int skynet_mq_length (int ) ;
 scalar_t__ skynet_thread_time () ;
 int sprintf (char*,char*,double) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static const char *
cmd_stat(struct skynet_context * context, const char * param) {
 if (strcmp(param, "mqlen") == 0) {
  int len = skynet_mq_length(context->queue);
  sprintf(context->result, "%d", len);
 } else if (strcmp(param, "endless") == 0) {
  if (context->endless) {
   strcpy(context->result, "1");
   context->endless = 0;
  } else {
   strcpy(context->result, "0");
  }
 } else if (strcmp(param, "cpu") == 0) {
  double t = (double)context->cpu_cost / 1000000.0;
  sprintf(context->result, "%lf", t);
 } else if (strcmp(param, "time") == 0) {
  if (context->profile) {
   uint64_t ti = skynet_thread_time() - context->cpu_start;
   double t = (double)ti / 1000000.0;
   sprintf(context->result, "%lf", t);
  } else {
   strcpy(context->result, "0");
  }
 } else if (strcmp(param, "message") == 0) {
  sprintf(context->result, "%d", context->message_count);
 } else {
  context->result[0] = '\0';
 }
 return context->result;
}
