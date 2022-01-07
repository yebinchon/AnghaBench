
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vlc_fourcc_t ;
typedef int * cvt_t ;
struct TYPE_2__ {scalar_t__ src; scalar_t__ dst; int * convert; } ;


 TYPE_1__* cvt_directs ;

__attribute__((used)) static cvt_t FindConversion(vlc_fourcc_t src, vlc_fourcc_t dst)
{
    for (int i = 0; cvt_directs[i].convert; i++) {
        if (cvt_directs[i].src == src &&
            cvt_directs[i].dst == dst)
            return cvt_directs[i].convert;
    }
    return ((void*)0);
}
