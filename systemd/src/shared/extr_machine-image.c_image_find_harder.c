
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ImageClass ;
typedef int Image ;


 int image_find (int ,char const*,int **) ;
 int image_from_path (char const*,int **) ;
 scalar_t__ image_name_is_valid (char const*) ;

int image_find_harder(ImageClass class, const char *name_or_path, Image **ret) {
        if (image_name_is_valid(name_or_path))
                return image_find(class, name_or_path, ret);

        return image_from_path(name_or_path, ret);
}
