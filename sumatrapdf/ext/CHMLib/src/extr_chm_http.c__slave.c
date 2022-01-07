
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct chmHttpSlave {int fd; TYPE_1__* server; } ;
struct chmFile {int dummy; } ;
struct TYPE_2__ {struct chmFile* file; } ;


 int close (int ) ;
 int free (struct chmHttpSlave*) ;
 int service_request (int ,struct chmFile*) ;

__attribute__((used)) static void *_slave(void *param)
{
    struct chmHttpSlave *slave;
    struct chmFile *file;


    slave = (struct chmHttpSlave *)param;
    file = slave->server->file;


    service_request(slave->fd, file);


    close(slave->fd);
    free(slave);
    return ((void*)0);
}
