
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* abs_path; int slash_regexes_len; int slash_regexes; int invert_regexes_len; int invert_regexes; int regexes_len; int regexes; int slash_names_len; int slash_names; int names_len; int names; int extensions_len; int extensions; } ;
typedef TYPE_1__ ignores ;


 int free (TYPE_1__*) ;
 int free_strings (int ,int ) ;

void cleanup_ignore(ignores *ig) {
    if (ig == ((void*)0)) {
        return;
    }
    free_strings(ig->extensions, ig->extensions_len);
    free_strings(ig->names, ig->names_len);
    free_strings(ig->slash_names, ig->slash_names_len);
    free_strings(ig->regexes, ig->regexes_len);
    free_strings(ig->invert_regexes, ig->invert_regexes_len);
    free_strings(ig->slash_regexes, ig->slash_regexes_len);
    if (ig->abs_path) {
        free(ig->abs_path);
    }
    free(ig);
}
