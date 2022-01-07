
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* ptr; int tmp; } ;
typedef TYPE_1__ json_parse_t ;


 int codepoint_to_utf8 (char*,int) ;
 int decode_hex4 (char*) ;
 int strbuf_append_mem_unsafe (int ,char*,int) ;

__attribute__((used)) static int json_append_unicode_escape(json_parse_t *json)
{
    char utf8[4];
    int codepoint;
    int surrogate_low;
    int len;
    int escape_len = 6;


    codepoint = decode_hex4(json->ptr + 2);
    if (codepoint < 0)
        return -1;







    if ((codepoint & 0xF800) == 0xD800) {

        if (codepoint & 0x400)
            return -1;


        if (*(json->ptr + escape_len) != '\\' ||
            *(json->ptr + escape_len + 1) != 'u') {
            return -1;
        }


        surrogate_low = decode_hex4(json->ptr + 2 + escape_len);
        if (surrogate_low < 0)
            return -1;


        if ((surrogate_low & 0xFC00) != 0xDC00)
            return -1;


        codepoint = (codepoint & 0x3FF) << 10;
        surrogate_low &= 0x3FF;
        codepoint = (codepoint | surrogate_low) + 0x10000;
        escape_len = 12;
    }


    len = codepoint_to_utf8(utf8, codepoint);
    if (!len)
        return -1;


    strbuf_append_mem_unsafe(json->tmp, utf8, len);
    json->ptr += escape_len;

    return 0;
}
