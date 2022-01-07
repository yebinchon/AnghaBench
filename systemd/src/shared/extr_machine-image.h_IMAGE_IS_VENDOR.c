
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Image {scalar_t__ path; } ;


 int assert (struct Image const*) ;
 scalar_t__ path_startswith (scalar_t__,char*) ;

__attribute__((used)) static inline bool IMAGE_IS_VENDOR(const struct Image *i) {
        assert(i);

        return i->path && path_startswith(i->path, "/usr");
}
