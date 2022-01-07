
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int invalid; } ;
typedef TYPE_1__ NetworkConfigSection ;



__attribute__((used)) static inline bool section_is_invalid(NetworkConfigSection *section) {


        if (!section)
                return 0;

        return section->invalid;
}
