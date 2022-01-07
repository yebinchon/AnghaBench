
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worker_message {int dummy; } ;
typedef int message ;


 int loop_write (int,struct worker_message*,int,int) ;

__attribute__((used)) static int worker_send_message(int fd) {
        struct worker_message message = {};

        return loop_write(fd, &message, sizeof(message), 0);
}
