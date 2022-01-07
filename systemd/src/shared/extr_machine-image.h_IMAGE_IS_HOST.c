
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Image {scalar_t__ path; scalar_t__ name; } ;


 int assert (struct Image const*) ;
 scalar_t__ path_equal (scalar_t__,char*) ;
 scalar_t__ streq (scalar_t__,char*) ;

__attribute__((used)) static inline bool IMAGE_IS_HOST(const struct Image *i) {
        assert(i);

        if (i->name && streq(i->name, ".host"))
                return 1;

        if (i->path && path_equal(i->path, "/"))
                return 1;

        return 0;
}
