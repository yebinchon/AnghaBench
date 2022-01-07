
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
_parm(char *msg, int sz, int command_sz) {
 while (command_sz < sz) {
  if (msg[command_sz] != ' ')
   break;
  ++command_sz;
 }
 int i;
 for (i=command_sz;i<sz;i++) {
  msg[i-command_sz] = msg[i];
 }
 msg[i-command_sz] = '\0';
}
