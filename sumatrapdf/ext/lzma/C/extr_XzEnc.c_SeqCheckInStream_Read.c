
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* Read ) (TYPE_2__*,void*,size_t*) ;} ;
struct TYPE_3__ {size_t processed; int check; TYPE_2__* realStream; } ;
typedef int SRes ;
typedef TYPE_1__ CSeqCheckInStream ;


 int XzCheck_Update (int *,void*,size_t) ;
 int stub1 (TYPE_2__*,void*,size_t*) ;

__attribute__((used)) static SRes SeqCheckInStream_Read(void *pp, void *data, size_t *size)
{
  CSeqCheckInStream *p = (CSeqCheckInStream *)pp;
  SRes res = p->realStream->Read(p->realStream, data, size);
  XzCheck_Update(&p->check, data, *size);
  p->processed += *size;
  return res;
}
