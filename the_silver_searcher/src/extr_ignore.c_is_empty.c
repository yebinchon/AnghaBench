
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ extensions_len; scalar_t__ names_len; scalar_t__ slash_names_len; scalar_t__ regexes_len; scalar_t__ slash_regexes_len; } ;
typedef TYPE_1__ ignores ;



int is_empty(ignores *ig) {
    return (ig->extensions_len + ig->names_len + ig->slash_names_len + ig->regexes_len + ig->slash_regexes_len == 0);
}
