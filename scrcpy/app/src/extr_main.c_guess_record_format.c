
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum recorder_format { ____Placeholder_recorder_format } recorder_format ;


 int RECORDER_FORMAT_MKV ;
 int RECORDER_FORMAT_MP4 ;
 int strcmp (char const*,char*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static enum recorder_format
guess_record_format(const char *filename) {
    size_t len = strlen(filename);
    if (len < 4) {
        return 0;
    }
    const char *ext = &filename[len - 4];
    if (!strcmp(ext, ".mp4")) {
        return RECORDER_FORMAT_MP4;
    }
    if (!strcmp(ext, ".mkv")) {
        return RECORDER_FORMAT_MKV;
    }
    return 0;
}
