
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ len; } ;
struct imsg {TYPE_1__ hdr; int data; } ;


 scalar_t__ IMSG_HEADER_SIZE ;
 int freezero (int ,scalar_t__) ;

void
imsg_free(struct imsg *imsg)
{
 freezero(imsg->data, imsg->hdr.len - IMSG_HEADER_SIZE);
}
