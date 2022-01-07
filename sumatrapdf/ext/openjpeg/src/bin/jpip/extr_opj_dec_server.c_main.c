
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dec_server_record_t ;
typedef int client_t ;


 int MAKEWORD (int,int) ;
 scalar_t__ WSACleanup () ;
 int WSAGetLastError () ;
 int WSAStartup (int ,int *) ;
 int accept_connection (int *) ;
 int atoi (char*) ;
 int fprintf (int ,char*,int,int) ;
 int handle_clientreq (int,int *) ;
 int * init_dec_server (int) ;
 int initialisation_win32 ;
 int printf (char*,...) ;
 int stderr ;
 int terminate_dec_server (int **) ;

int main(int argc, char *argv[])
{

    dec_server_record_t *server_record;
    client_t client;
    int port = 50000;
    int erreur;
    (void)erreur;

    if (argc > 1) {
        port = atoi(argv[1]);
    }
    server_record = init_dec_server(port);

    while ((client = accept_connection(server_record)) != -1)
        if (!handle_clientreq(client, server_record)) {
            break;
        }

    terminate_dec_server(&server_record);
    return 0;
}
