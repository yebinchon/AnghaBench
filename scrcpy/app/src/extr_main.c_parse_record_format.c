
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum recorder_format { ____Placeholder_recorder_format } recorder_format ;


 int LOGE (char*,char const*) ;
 int RECORDER_FORMAT_MKV ;
 int RECORDER_FORMAT_MP4 ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static bool
parse_record_format(const char *optarg, enum recorder_format *format) {
    if (!strcmp(optarg, "mp4")) {
        *format = RECORDER_FORMAT_MP4;
        return 1;
    }
    if (!strcmp(optarg, "mkv")) {
        *format = RECORDER_FORMAT_MKV;
        return 1;
    }
    LOGE("Unsupported format: %s (expected mp4 or mkv)", optarg);
    return 0;
}
