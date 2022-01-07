
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct swaybar {int ipc_socketfd; } ;


 int IPC_COMMAND ;
 int free (char*) ;
 int ipc_single_command (int ,int ,char*,int*) ;
 char* malloc (int) ;
 int strcpy (char*,char*) ;
 size_t strlen (char const*) ;

void ipc_send_workspace_command(struct swaybar *bar, const char *ws) {
 uint32_t size = strlen("workspace \"\"") + strlen(ws);
 for (size_t i = 0; i < strlen(ws); ++i) {
  if (ws[i] == '"' || ws[i] == '\\') {
   ++size;
  }
 }

 char *command = malloc(size + 1);
 if (!command) {
  return;
 }

 strcpy(command, "workspace \"");
 strcpy(&command[size - 1], "\"");
 for (size_t i = 0, d = strlen("workspace \""); i < strlen(ws); ++i) {
  if (ws[i] == '"' || ws[i] == '\\') {
   command[d++] = '\\';
  }
  command[d++] = ws[i];
 }

 ipc_single_command(bar->ipc_socketfd, IPC_COMMAND, command, &size);
 free(command);
}
