
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct controller {int control_socket; } ;
struct control_msg {int dummy; } ;


 int CONTROL_MSG_SERIALIZED_MAX_SIZE ;
 int control_msg_serialize (struct control_msg const*,unsigned char*) ;
 int net_send_all (int ,unsigned char*,int) ;

__attribute__((used)) static bool
process_msg(struct controller *controller,
              const struct control_msg *msg) {
    unsigned char serialized_msg[CONTROL_MSG_SERIALIZED_MAX_SIZE];
    int length = control_msg_serialize(msg, serialized_msg);
    if (!length) {
        return 0;
    }
    int w = net_send_all(controller->control_socket, serialized_msg, length);
    return w == length;
}
