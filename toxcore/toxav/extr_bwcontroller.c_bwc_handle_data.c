
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct BWCMessage {int dummy; } ;
typedef int Messenger ;


 int on_update (void*,struct BWCMessage*) ;

int bwc_handle_data(Messenger *m, uint32_t friendnumber, const uint8_t *data, uint16_t length, void *object)
{
    if (length - 1 != sizeof(struct BWCMessage))
        return -1;


    return on_update(object, (struct BWCMessage *) (data + 1));
}
