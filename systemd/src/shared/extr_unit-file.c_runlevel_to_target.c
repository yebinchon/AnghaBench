
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ in_initrd () ;
 char** rlmap ;
 char** rlmap_initrd ;
 char* startswith (char const*,char*) ;
 scalar_t__ streq (char const*,char const* const) ;

const char* runlevel_to_target(const char *word) {
        const char * const *rlmap_ptr;
        size_t i;

        if (!word)
                return ((void*)0);

        if (in_initrd()) {
                word = startswith(word, "rd.");
                if (!word)
                        return ((void*)0);
        }

        rlmap_ptr = in_initrd() ? rlmap_initrd : rlmap;

        for (i = 0; rlmap_ptr[i]; i += 2)
                if (streq(word, rlmap_ptr[i]))
                        return rlmap_ptr[i+1];

        return ((void*)0);
}
