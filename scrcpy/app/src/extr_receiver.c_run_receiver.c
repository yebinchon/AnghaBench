
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct receiver {int control_socket; } ;
typedef int ssize_t ;


 int DEVICE_MSG_SERIALIZED_MAX_SIZE ;
 int LOGD (char*) ;
 int SDL_assert (int) ;
 int memmove (unsigned char*,unsigned char*,int) ;
 int net_recv (int ,unsigned char*,int) ;
 int process_msgs (struct receiver*,unsigned char*,int) ;

__attribute__((used)) static int
run_receiver(void *data) {
    struct receiver *receiver = data;

    unsigned char buf[DEVICE_MSG_SERIALIZED_MAX_SIZE];
    size_t head = 0;

    for (;;) {
        SDL_assert(head < DEVICE_MSG_SERIALIZED_MAX_SIZE);
        ssize_t r = net_recv(receiver->control_socket, buf,
                             DEVICE_MSG_SERIALIZED_MAX_SIZE - head);
        if (r <= 0) {
            LOGD("Receiver stopped");
            break;
        }

        ssize_t consumed = process_msgs(receiver, buf, r);
        if (consumed == -1) {

            break;
        }

        if (consumed) {

            memmove(buf, &buf[consumed], r - consumed);
            head = r - consumed;
        }
    }

    return 0;
}
