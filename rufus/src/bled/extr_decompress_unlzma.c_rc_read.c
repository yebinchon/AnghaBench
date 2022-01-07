
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* ptr; void* buffer_end; int fd; } ;
typedef TYPE_1__ rc_t ;


 void* RC_BUFFER ;
 int RC_BUFFER_SIZE ;
 int bb_error_msg_and_die (char*) ;
 int safe_read (int ,void*,int ) ;

__attribute__((used)) static void rc_read(rc_t *rc)
{
 int buffer_size = safe_read(rc->fd, RC_BUFFER, RC_BUFFER_SIZE);


 if (buffer_size <= 0)
  bb_error_msg_and_die("unexpected EOF");
 rc->buffer_end = RC_BUFFER + buffer_size;
 rc->ptr = RC_BUFFER;
}
