
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef union clusterMsgData {int dummy; } clusterMsgData ;
typedef int uint32_t ;
struct TYPE_17__ {TYPE_5__* ptr; } ;
typedef TYPE_4__ robj ;
typedef int clusterMsgDataPublish ;
struct TYPE_14__ {unsigned char* bulk_data; void* message_len; void* channel_len; } ;
struct TYPE_15__ {TYPE_1__ msg; } ;
struct TYPE_16__ {TYPE_2__ publish; } ;
struct TYPE_18__ {TYPE_3__ data; void* totlen; } ;
typedef TYPE_5__ clusterMsg ;
typedef int clusterLink ;
typedef int buf ;


 int CLUSTERMSG_TYPE_PUBLISH ;
 int clusterBroadcastMessage (unsigned char*,int) ;
 int clusterBuildMessageHdr (TYPE_5__*,int ) ;
 int clusterSendMessage (int *,unsigned char*,int) ;
 int decrRefCount (TYPE_4__*) ;
 TYPE_4__* getDecodedObject (TYPE_4__*) ;
 void* htonl (int) ;
 int memcpy (unsigned char*,TYPE_5__*,int) ;
 int sdslen (TYPE_5__*) ;
 int zfree (unsigned char*) ;
 unsigned char* zmalloc (int) ;

void clusterSendPublish(clusterLink *link, robj *channel, robj *message) {
    unsigned char *payload;
    clusterMsg buf[1];
    clusterMsg *hdr = (clusterMsg*) buf;
    uint32_t totlen;
    uint32_t channel_len, message_len;

    channel = getDecodedObject(channel);
    message = getDecodedObject(message);
    channel_len = sdslen(channel->ptr);
    message_len = sdslen(message->ptr);

    clusterBuildMessageHdr(hdr,CLUSTERMSG_TYPE_PUBLISH);
    totlen = sizeof(clusterMsg)-sizeof(union clusterMsgData);
    totlen += sizeof(clusterMsgDataPublish) - 8 + channel_len + message_len;

    hdr->data.publish.msg.channel_len = htonl(channel_len);
    hdr->data.publish.msg.message_len = htonl(message_len);
    hdr->totlen = htonl(totlen);


    if (totlen < sizeof(buf)) {
        payload = (unsigned char*)buf;
    } else {
        payload = zmalloc(totlen);
        memcpy(payload,hdr,sizeof(*hdr));
        hdr = (clusterMsg*) payload;
    }
    memcpy(hdr->data.publish.msg.bulk_data,channel->ptr,sdslen(channel->ptr));
    memcpy(hdr->data.publish.msg.bulk_data+sdslen(channel->ptr),
        message->ptr,sdslen(message->ptr));

    if (link)
        clusterSendMessage(link,payload,totlen);
    else
        clusterBroadcastMessage(payload,totlen);

    decrRefCount(channel);
    decrRefCount(message);
    if (payload != (unsigned char*)buf) zfree(payload);
}
