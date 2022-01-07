
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Image ;


 int AT_FDCWD ;
 int image_make (char*,int ,int *,char const*,int *,int **) ;
 scalar_t__ path_equal (char const*,char*) ;

int image_from_path(const char *path, Image **ret) {





        if (path_equal(path, "/"))
                return image_make(".host", AT_FDCWD, ((void*)0), "/", ((void*)0), ret);

        return image_make(((void*)0), AT_FDCWD, ((void*)0), path, ((void*)0), ret);
}
