
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ header_printed; } ;
typedef TYPE_1__ zdb_label_t ;


 scalar_t__ B_TRUE ;
 scalar_t__* dump_opt ;
 int printf (char*,...) ;

__attribute__((used)) static void
print_label_header(zdb_label_t *label, int l)
{

 if (dump_opt['q'])
  return;

 if (label->header_printed == B_TRUE)
  return;

 (void) printf("------------------------------------\n");
 (void) printf("LABEL %d\n", l);
 (void) printf("------------------------------------\n");

 label->header_printed = B_TRUE;
}
