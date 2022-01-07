
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t* data; } ;
typedef TYPE_1__ http_parser ;



__attribute__((used)) static int verify_request(http_parser *parser) {
    size_t *count = parser->data;
    (*count)++;
    return 0;
}
