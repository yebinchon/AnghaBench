
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* labels; } ;
typedef TYPE_1__ cksum_record_t ;


 scalar_t__ B_TRUE ;
 int VDEV_LABELS ;
 int printf (char*,...) ;

__attribute__((used)) static void
print_label_numbers(char *prefix, cksum_record_t *rec)
{
 printf("%s", prefix);
 for (int i = 0; i < VDEV_LABELS; i++)
  if (rec->labels[i] == B_TRUE)
   printf("%d ", i);
 printf("\n");
}
