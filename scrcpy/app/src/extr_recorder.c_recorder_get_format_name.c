
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum recorder_format { ____Placeholder_recorder_format } recorder_format ;





__attribute__((used)) static const char *
recorder_get_format_name(enum recorder_format format) {
    switch (format) {
        case 128: return "mp4";
        case 129: return "matroska";
        default: return ((void*)0);
    }
}
