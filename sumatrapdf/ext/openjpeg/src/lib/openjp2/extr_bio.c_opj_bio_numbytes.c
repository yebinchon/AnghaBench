
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ptrdiff_t ;
struct TYPE_3__ {scalar_t__ start; scalar_t__ bp; } ;
typedef TYPE_1__ opj_bio_t ;



ptrdiff_t opj_bio_numbytes(opj_bio_t *bio)
{
    return (bio->bp - bio->start);
}
