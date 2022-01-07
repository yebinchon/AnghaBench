
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zio_cksum_t ;
typedef int drr ;
struct TYPE_5__ {int drr_checksum; } ;
struct TYPE_6__ {TYPE_1__ drr_end; } ;
struct TYPE_7__ {TYPE_2__ drr_u; int drr_type; int member_0; } ;
typedef TYPE_3__ dmu_replay_record_t ;


 int DRR_END ;
 int errno ;
 int write (int,TYPE_3__*,int) ;

__attribute__((used)) static int
send_conclusion_record(int fd, zio_cksum_t *zc)
{
 dmu_replay_record_t drr = { 0 };
 drr.drr_type = DRR_END;
 if (zc != ((void*)0))
  drr.drr_u.drr_end.drr_checksum = *zc;
 if (write(fd, &drr, sizeof (drr)) == -1) {
  return (errno);
 }
 return (0);
}
