
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vlc_fourcc_t ;
struct fmt_desc {int dummy; } ;
struct TYPE_2__ {scalar_t__ fcc; struct fmt_desc const desc; } ;


 TYPE_1__* formats ;

__attribute__((used)) static const struct fmt_desc *FindDesc(vlc_fourcc_t fcc)
{
    for (int i = 0; formats[i].fcc; i++) {
        if (formats[i].fcc == fcc) {
            return &formats[i].desc;
        }
    }

    return ((void*)0);
}
