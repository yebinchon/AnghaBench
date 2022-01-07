
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* dirname; size_t dirname_len; scalar_t__ abs_path_len; char* abs_path; struct TYPE_5__* parent; scalar_t__ slash_regexes_len; int * slash_regexes; scalar_t__ invert_regexes_len; int * invert_regexes; scalar_t__ regexes_len; int * regexes; scalar_t__ slash_names_len; int * slash_names; scalar_t__ names_len; int * names; scalar_t__ extensions_len; int * extensions; } ;
typedef TYPE_1__ ignores ;


 int ag_asprintf (char**,char*,char const*,...) ;
 void* ag_malloc (int) ;
 scalar_t__ is_empty (TYPE_1__*) ;

ignores *init_ignore(ignores *parent, const char *dirname, const size_t dirname_len) {
    ignores *ig = ag_malloc(sizeof(ignores));
    ig->extensions = ((void*)0);
    ig->extensions_len = 0;
    ig->names = ((void*)0);
    ig->names_len = 0;
    ig->slash_names = ((void*)0);
    ig->slash_names_len = 0;
    ig->regexes = ((void*)0);
    ig->regexes_len = 0;
    ig->invert_regexes = ((void*)0);
    ig->invert_regexes_len = 0;
    ig->slash_regexes = ((void*)0);
    ig->slash_regexes_len = 0;
    ig->dirname = dirname;
    ig->dirname_len = dirname_len;

    if (parent && is_empty(parent) && parent->parent) {
        ig->parent = parent->parent;
    } else {
        ig->parent = parent;
    }

    if (parent && parent->abs_path_len > 0) {
        ag_asprintf(&(ig->abs_path), "%s/%s", parent->abs_path, dirname);
        ig->abs_path_len = parent->abs_path_len + 1 + dirname_len;
    } else if (dirname_len == 1 && dirname[0] == '.') {
        ig->abs_path = ag_malloc(sizeof(char));
        ig->abs_path[0] = '\0';
        ig->abs_path_len = 0;
    } else {
        ag_asprintf(&(ig->abs_path), "%s", dirname);
        ig->abs_path_len = dirname_len;
    }
    return ig;
}
