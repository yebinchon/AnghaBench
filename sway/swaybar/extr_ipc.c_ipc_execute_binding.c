
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct swaybar_binding {int command; int release; int button; } ;
struct swaybar {int ipc_socketfd; } ;


 int IPC_COMMAND ;
 int SWAY_DEBUG ;
 int free (int ) ;
 int ipc_single_command (int ,int ,int ,int *) ;
 int strlen (int ) ;
 int sway_log (int ,char*,int ,int ,int ) ;

void ipc_execute_binding(struct swaybar *bar, struct swaybar_binding *bind) {
 sway_log(SWAY_DEBUG, "Executing binding for button %u (release=%d): `%s`",
   bind->button, bind->release, bind->command);
 uint32_t len = strlen(bind->command);
 free(ipc_single_command(bar->ipc_socketfd,
   IPC_COMMAND, bind->command, &len));
}
