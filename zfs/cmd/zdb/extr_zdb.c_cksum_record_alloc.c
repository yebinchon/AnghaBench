
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zio_cksum_t ;
struct TYPE_4__ {int * labels; int cksum; } ;
typedef TYPE_1__ cksum_record_t ;


 int B_TRUE ;
 int UMEM_NOFAIL ;
 TYPE_1__* umem_zalloc (int,int ) ;

__attribute__((used)) static cksum_record_t *
cksum_record_alloc(zio_cksum_t *cksum, int l)
{
 cksum_record_t *rec;

 rec = umem_zalloc(sizeof (*rec), UMEM_NOFAIL);
 rec->cksum = *cksum;
 rec->labels[l] = B_TRUE;

 return (rec);
}
