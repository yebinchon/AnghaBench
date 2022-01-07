
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int line; int filename; } ;
struct TYPE_5__ {scalar_t__ family; TYPE_2__* section; } ;
typedef TYPE_1__ Address ;


 scalar_t__ AF_UNSPEC ;
 int EINVAL ;
 int SYNTHETIC_ERRNO (int) ;
 int assert (TYPE_2__*) ;
 int log_warning_errno (int ,char*,int ,int ) ;
 scalar_t__ section_is_invalid (TYPE_2__*) ;

int address_section_verify(Address *address) {
        if (section_is_invalid(address->section))
                return -EINVAL;

        if (address->family == AF_UNSPEC) {
                assert(address->section);

                return log_warning_errno(SYNTHETIC_ERRNO(EINVAL),
                                         "%s: Address section without Address= field configured. "
                                         "Ignoring [Address] section from line %u.",
                                         address->section->filename, address->section->line);
        }

        return 0;
}
