
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int message ;
struct TYPE_4__ {scalar_t__ handle_friendrequest_isset; scalar_t__ (* filter_function ) (scalar_t__ const*,int ) ;int handle_friendrequest_userdata; int handle_friendrequest_object; int (* handle_friendrequest ) (int ,scalar_t__ const*,scalar_t__*,int,int ) ;int filter_function_userdata; int nospam; } ;
typedef TYPE_1__ Friend_Requests ;


 int ONION_CLIENT_MAX_DATA_SIZE ;
 int addto_receivedlist (TYPE_1__*,scalar_t__ const*) ;
 scalar_t__ memcmp (scalar_t__ const*,int *,int) ;
 int memcpy (scalar_t__*,scalar_t__ const*,int) ;
 scalar_t__ request_received (TYPE_1__*,scalar_t__ const*) ;
 scalar_t__ stub1 (scalar_t__ const*,int ) ;
 int stub2 (int ,scalar_t__ const*,scalar_t__*,int,int ) ;

__attribute__((used)) static int friendreq_handlepacket(void *object, const uint8_t *source_pubkey, const uint8_t *packet, uint16_t length)
{
    Friend_Requests *fr = object;

    if (length <= 1 + sizeof(fr->nospam) || length > ONION_CLIENT_MAX_DATA_SIZE)
        return 1;

    ++packet;
    --length;

    if (fr->handle_friendrequest_isset == 0)
        return 1;

    if (request_received(fr, source_pubkey))
        return 1;

    if (memcmp(packet, &fr->nospam, sizeof(fr->nospam)) != 0)
        return 1;

    if (fr->filter_function)
        if ((*fr->filter_function)(source_pubkey, fr->filter_function_userdata) != 0)
            return 1;

    addto_receivedlist(fr, source_pubkey);

    uint32_t message_len = length - sizeof(fr->nospam);
    uint8_t message[message_len + 1];
    memcpy(message, packet + sizeof(fr->nospam), message_len);
    message[sizeof(message) - 1] = 0;

    (*fr->handle_friendrequest)(fr->handle_friendrequest_object, source_pubkey, message, message_len,
                                fr->handle_friendrequest_userdata);
    return 0;
}
