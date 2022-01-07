
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OutputMode ;
typedef int JsonFormatFlags ;


 int JSON_FORMAT_NEWLINE ;
 int JSON_FORMAT_PRETTY ;
 int JSON_FORMAT_SEQ ;
 int JSON_FORMAT_SSE ;




JsonFormatFlags output_mode_to_json_format_flags(OutputMode m) {

        switch (m) {

        case 128:
                return JSON_FORMAT_SSE;

        case 129:
                return JSON_FORMAT_SEQ;

        case 130:
                return JSON_FORMAT_PRETTY;

        default:
                return JSON_FORMAT_NEWLINE;
        }
}
