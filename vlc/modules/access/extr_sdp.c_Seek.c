
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {char* p_sys; scalar_t__ psz_location; } ;
typedef TYPE_1__ stream_t ;


 scalar_t__ SIZE_MAX ;
 int VLC_SUCCESS ;
 int strnlen (scalar_t__,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int Seek (stream_t *access, uint64_t position)
{




    access->p_sys = (char *)access->psz_location
                    + strnlen(access->psz_location, position);
    return VLC_SUCCESS;
}
