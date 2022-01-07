
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int path; } ;
typedef TYPE_1__ UnitFileList ;


 char const* basename (int ) ;
 int strcasecmp (char const*,char const*) ;
 char* strrchr (int ,char) ;

__attribute__((used)) static int compare_unit_file_list(const UnitFileList *a, const UnitFileList *b) {
        const char *d1, *d2;

        d1 = strrchr(a->path, '.');
        d2 = strrchr(b->path, '.');

        if (d1 && d2) {
                int r;

                r = strcasecmp(d1, d2);
                if (r != 0)
                        return r;
        }

        return strcasecmp(basename(a->path), basename(b->path));
}
