
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct control_msg {unsigned char const type; } ;
typedef int expected ;


 int CONTROL_MSG_SERIALIZED_MAX_SIZE ;
 unsigned char const CONTROL_MSG_TYPE_GET_CLIPBOARD ;
 int assert (int) ;
 int control_msg_serialize (struct control_msg*,unsigned char*) ;
 int memcmp (unsigned char*,unsigned char const*,int) ;

__attribute__((used)) static void test_serialize_get_clipboard(void) {
    struct control_msg msg = {
        .type = CONTROL_MSG_TYPE_GET_CLIPBOARD,
    };

    unsigned char buf[CONTROL_MSG_SERIALIZED_MAX_SIZE];
    int size = control_msg_serialize(&msg, buf);
    assert(size == 1);

    const unsigned char expected[] = {
        CONTROL_MSG_TYPE_GET_CLIPBOARD,
    };
    assert(!memcmp(buf, expected, sizeof(expected)));
}
