
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int current_depth; } ;
typedef TYPE_1__ json_parse_t ;



__attribute__((used)) static inline void json_decode_ascend(json_parse_t *json)
{
    json->current_depth--;
}
