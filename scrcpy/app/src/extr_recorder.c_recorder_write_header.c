
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct recorder {int filename; TYPE_6__* ctx; } ;
struct TYPE_11__ {TYPE_3__** streams; } ;
struct TYPE_10__ {int size; int data; } ;
struct TYPE_9__ {TYPE_2__* codec; TYPE_1__* codecpar; } ;
struct TYPE_8__ {int extradata_size; int * extradata; } ;
struct TYPE_7__ {int extradata_size; int * extradata; } ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVPacket ;


 int LOGC (char*) ;
 int LOGE (char*,int ) ;
 int * av_malloc (int) ;
 int avformat_write_header (TYPE_6__*,int *) ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static bool
recorder_write_header(struct recorder *recorder, const AVPacket *packet) {
    AVStream *ostream = recorder->ctx->streams[0];

    uint8_t *extradata = av_malloc(packet->size * sizeof(uint8_t));
    if (!extradata) {
        LOGC("Could not allocate extradata");
        return 0;
    }


    memcpy(extradata, packet->data, packet->size);





    ostream->codec->extradata = extradata;
    ostream->codec->extradata_size = packet->size;


    int ret = avformat_write_header(recorder->ctx, ((void*)0));
    if (ret < 0) {
        LOGE("Failed to write header to %s", recorder->filename);
        return 0;
    }

    return 1;
}
