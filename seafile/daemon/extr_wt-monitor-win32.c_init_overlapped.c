
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ OffsetHigh; scalar_t__ Offset; } ;
typedef TYPE_1__ OVERLAPPED ;



__attribute__((used)) static inline void
init_overlapped(OVERLAPPED *ol)
{
    ol->Offset = ol->OffsetHigh = 0;
}
