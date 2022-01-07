
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int path; } ;
typedef TYPE_1__ PathSpec ;
typedef int FILE ;


 int fprintf (int *,char*,char const*,char*,int ) ;
 char* path_type_to_string (int ) ;

__attribute__((used)) static void path_spec_dump(PathSpec *s, FILE *f, const char *prefix) {
        fprintf(f,
                "%s%s: %s\n",
                prefix,
                path_type_to_string(s->type),
                s->path);
}
