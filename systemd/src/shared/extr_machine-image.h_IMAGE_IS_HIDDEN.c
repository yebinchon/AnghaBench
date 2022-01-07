
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Image {char* name; } ;


 int assert (struct Image const*) ;

__attribute__((used)) static inline bool IMAGE_IS_HIDDEN(const struct Image *i) {
        assert(i);

        return i->name && i->name[0] == '.';
}
