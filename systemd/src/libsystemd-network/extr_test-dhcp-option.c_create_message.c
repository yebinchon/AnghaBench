
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_5__ {int sname; int file; int options; } ;
typedef TYPE_1__ DHCPMessage ;


 int assert_se (TYPE_1__*) ;
 TYPE_1__* malloc0 (size_t) ;
 int memcpy_safe (int *,int *,int ) ;

__attribute__((used)) static DHCPMessage *create_message(uint8_t *options, uint16_t optlen,
                uint8_t *file, uint8_t filelen,
                uint8_t *sname, uint8_t snamelen) {
        DHCPMessage *message;
        size_t len = sizeof(DHCPMessage) + optlen;

        message = malloc0(len);
        assert_se(message);

        memcpy_safe(&message->options, options, optlen);
        memcpy_safe(&message->file, file, filelen);
        memcpy_safe(&message->sname, sname, snamelen);

        return message;
}
