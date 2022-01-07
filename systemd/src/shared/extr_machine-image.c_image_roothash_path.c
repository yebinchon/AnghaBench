
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int path; int name; } ;
typedef TYPE_1__ Image ;


 int assert (TYPE_1__*) ;
 char* file_in_same_dir (int ,char const*) ;
 char* strjoina (int ,char*) ;

__attribute__((used)) static char *image_roothash_path(Image *image) {
        const char *fn;

        assert(image);

        fn = strjoina(image->name, ".roothash");

        return file_in_same_dir(image->path, fn);
}
