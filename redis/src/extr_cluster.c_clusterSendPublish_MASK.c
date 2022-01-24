#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  union clusterMsgData {int dummy; } clusterMsgData ;
typedef  int uint32_t ;
struct TYPE_17__ {TYPE_5__* ptr; } ;
typedef  TYPE_4__ robj ;
typedef  int /*<<< orphan*/  clusterMsgDataPublish ;
struct TYPE_14__ {unsigned char* bulk_data; void* message_len; void* channel_len; } ;
struct TYPE_15__ {TYPE_1__ msg; } ;
struct TYPE_16__ {TYPE_2__ publish; } ;
struct TYPE_18__ {TYPE_3__ data; void* totlen; } ;
typedef  TYPE_5__ clusterMsg ;
typedef  int /*<<< orphan*/  clusterLink ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  CLUSTERMSG_TYPE_PUBLISH ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 TYPE_4__* FUNC4 (TYPE_4__*) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,TYPE_5__*,int) ; 
 int FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*) ; 
 unsigned char* FUNC9 (int) ; 

void FUNC10(clusterLink *link, robj *channel, robj *message) {
    unsigned char *payload;
    clusterMsg buf[1];
    clusterMsg *hdr = (clusterMsg*) buf;
    uint32_t totlen;
    uint32_t channel_len, message_len;

    channel = FUNC4(channel);
    message = FUNC4(message);
    channel_len = FUNC7(channel->ptr);
    message_len = FUNC7(message->ptr);

    FUNC1(hdr,CLUSTERMSG_TYPE_PUBLISH);
    totlen = sizeof(clusterMsg)-sizeof(union clusterMsgData);
    totlen += sizeof(clusterMsgDataPublish) - 8 + channel_len + message_len;

    hdr->data.publish.msg.channel_len = FUNC5(channel_len);
    hdr->data.publish.msg.message_len = FUNC5(message_len);
    hdr->totlen = FUNC5(totlen);

    /* Try to use the local buffer if possible */
    if (totlen < sizeof(buf)) {
        payload = (unsigned char*)buf;
    } else {
        payload = FUNC9(totlen);
        FUNC6(payload,hdr,sizeof(*hdr));
        hdr = (clusterMsg*) payload;
    }
    FUNC6(hdr->data.publish.msg.bulk_data,channel->ptr,FUNC7(channel->ptr));
    FUNC6(hdr->data.publish.msg.bulk_data+FUNC7(channel->ptr),
        message->ptr,FUNC7(message->ptr));

    if (link)
        FUNC2(link,payload,totlen);
    else
        FUNC0(payload,totlen);

    FUNC3(channel);
    FUNC3(message);
    if (payload != (unsigned char*)buf) FUNC8(payload);
}