
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * zc_word; } ;
struct TYPE_4__ {TYPE_1__ cksum; } ;
typedef TYPE_2__ cksum_record_t ;


 int ARRAY_SIZE (int *) ;
 int TREE_CMP (int ,int ) ;

__attribute__((used)) static int
cksum_record_compare(const void *x1, const void *x2)
{
 const cksum_record_t *l = (cksum_record_t *)x1;
 const cksum_record_t *r = (cksum_record_t *)x2;
 int arraysize = ARRAY_SIZE(l->cksum.zc_word);
 int difference;

 for (int i = 0; i < arraysize; i++) {
  difference = TREE_CMP(l->cksum.zc_word[i], r->cksum.zc_word[i]);
  if (difference)
   break;
 }

 return (difference);
}
