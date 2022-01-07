
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* rpc_socket_path; int seaf_dir; } ;
typedef int SearpcNamedPipeServer ;
typedef int DWORD ;


 int GetLastError () ;
 scalar_t__ GetUserName (char*,int*) ;
 int SEAFILE_SOCKET_NAME ;
 int b64encode (char*) ;
 char* g_build_filename (int ,int ,int *) ;
 int g_free (char*) ;
 char* g_strdup_printf (char*,int ) ;
 int register_rpc_service () ;
 TYPE_1__* seaf ;
 int seaf_warning (char*,...) ;
 int * searpc_create_named_pipe_server (char*) ;
 int searpc_named_pipe_server_start (int *) ;

__attribute__((used)) static int
start_searpc_server ()
{
    register_rpc_service ();
    char *path = g_build_filename (seaf->seaf_dir, SEAFILE_SOCKET_NAME, ((void*)0));


    SearpcNamedPipeServer *server = searpc_create_named_pipe_server (path);
    if (!server) {
        seaf_warning ("Failed to create named pipe server.\n");
        g_free (path);
        return -1;
    }

    seaf->rpc_socket_path = path;

    return searpc_named_pipe_server_start (server);
}
