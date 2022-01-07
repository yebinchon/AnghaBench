
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int IPC_COMMAND ;
 int close (int) ;
 int free (char*) ;
 int ipc_open_socket (char*) ;
 char* ipc_single_command (int,int ,char*,int *) ;
 int printf (char*,char*) ;
 int strlen (char*) ;

void run_as_ipc_client(char *command, char *socket_path) {
 int socketfd = ipc_open_socket(socket_path);
 uint32_t len = strlen(command);
 char *resp = ipc_single_command(socketfd, IPC_COMMAND, command, &len);
 printf("%s\n", resp);
 free(resp);
 close(socketfd);
}
