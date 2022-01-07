
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_parser_url {int field_set; } ;


 int UF_HOST ;
 int UF_SCHEMA ;
 int http_parser_parse_url (char*,int ,int ,struct http_parser_url*) ;
 int strlen (char*) ;

int script_parse_url(char *url, struct http_parser_url *parts) {
    if (!http_parser_parse_url(url, strlen(url), 0, parts)) {
        if (!(parts->field_set & (1 << UF_SCHEMA))) return 0;
        if (!(parts->field_set & (1 << UF_HOST))) return 0;
        return 1;
    }
    return 0;
}
