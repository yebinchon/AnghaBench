
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* tcp_port_rdp; } ;
typedef TYPE_1__ RDPCLIENT ;


 char* strchr (char*,char) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int ) ;
 void* strtol (char*,int *,int) ;

__attribute__((used)) static void
parse_server_and_port(RDPCLIENT * This, char *server)
{
 char *p;
 p = strchr(server, ':');
 if (p != ((void*)0))
 {
  This->tcp_port_rdp = strtol(p + 1, ((void*)0), 10);
  *p = 0;
 }


}
