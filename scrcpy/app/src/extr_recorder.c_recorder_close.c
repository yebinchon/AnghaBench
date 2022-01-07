
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct recorder {int failed; int filename; int format; TYPE_1__* ctx; } ;
struct TYPE_3__ {int pb; } ;


 int LOGE (char*,int ) ;
 int LOGI (char*,char const*,int ) ;
 int av_write_trailer (TYPE_1__*) ;
 int avformat_free_context (TYPE_1__*) ;
 int avio_close (int ) ;
 char* recorder_get_format_name (int ) ;

void
recorder_close(struct recorder *recorder) {
    int ret = av_write_trailer(recorder->ctx);
    if (ret < 0) {
        LOGE("Failed to write trailer to %s", recorder->filename);
        recorder->failed = 1;
    }
    avio_close(recorder->ctx->pb);
    avformat_free_context(recorder->ctx);

    if (recorder->failed) {
        LOGE("Recording failed to %s", recorder->filename);
    } else {
        const char *format_name = recorder_get_format_name(recorder->format);
        LOGI("Recording complete to %s file: %s", format_name, recorder->filename);
    }
}
