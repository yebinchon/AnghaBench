
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ magic1; scalar_t__ magic2; scalar_t__ version; } ;
typedef TYPE_1__ runtime_pseudo_reloc_v2 ;
struct TYPE_5__ {int target; int sym; int flags; } ;
typedef TYPE_2__ runtime_pseudo_reloc_item_v2 ;
struct TYPE_6__ {int target; int addend; } ;
typedef TYPE_3__ runtime_pseudo_reloc_item_v1 ;
typedef int ptrdiff_t ;
typedef int DWORD ;


 scalar_t__ RP_VERSION_V1 ;
 scalar_t__ RP_VERSION_V2 ;
 int __report_error (char*,int) ;
 int __write_memory (void*,int*,int) ;

__attribute__((used)) static void
do_pseudo_reloc (void * start, void * end, void * base)
{
  ptrdiff_t addr_imp, reldata;
  ptrdiff_t reloc_target = (ptrdiff_t) ((char *)end - (char*)start);
  runtime_pseudo_reloc_v2 *v2_hdr = (runtime_pseudo_reloc_v2 *) start;
  runtime_pseudo_reloc_item_v2 *r;





  if (reloc_target < 8)
    return;
  if (reloc_target >= 12
      && v2_hdr->magic1 == 0 && v2_hdr->magic2 == 0
      && v2_hdr->version == RP_VERSION_V1)
    {
      v2_hdr++;
    }

  if (v2_hdr->magic1 != 0 || v2_hdr->magic2 != 0)
    {



      runtime_pseudo_reloc_item_v1 * o;
      for (o = (runtime_pseudo_reloc_item_v1 *) v2_hdr;
    o < (runtime_pseudo_reloc_item_v1 *)end;
           o++)
 {
   DWORD newval;
   reloc_target = (ptrdiff_t) base + o->target;
   newval = (*((DWORD*) reloc_target)) + o->addend;
   __write_memory ((void *) reloc_target, &newval, sizeof(DWORD));
 }
      return;
    }




  if (v2_hdr->version != RP_VERSION_V2)
    {
      __report_error ("  Unknown pseudo relocation protocol version %d.\n",
        (int) v2_hdr->version);
      return;
    }






  r = (runtime_pseudo_reloc_item_v2 *) &v2_hdr[1];

  for (; r < (runtime_pseudo_reloc_item_v2 *) end; r++)
    {

      reloc_target = (ptrdiff_t) base + r->target;




      addr_imp = (ptrdiff_t) base + r->sym;
      addr_imp = *((ptrdiff_t *) addr_imp);







      switch ((r->flags & 0xff))
        {
          case 8:
     reldata = (ptrdiff_t) (*((unsigned char *)reloc_target));
     if ((reldata & 0x80) != 0)
       reldata |= ~((ptrdiff_t) 0xff);
     break;
   case 16:
     reldata = (ptrdiff_t) (*((unsigned short *)reloc_target));
     if ((reldata & 0x8000) != 0)
       reldata |= ~((ptrdiff_t) 0xffff);
     break;
   case 32:
     reldata = (ptrdiff_t) (*((unsigned int *)reloc_target));




     break;





   default:
     reldata=0;
     __report_error ("  Unknown pseudo relocation bit size %d.\n",
      (int) (r->flags & 0xff));
     break;
        }


      reldata -= ((ptrdiff_t) base + r->sym);
      reldata += addr_imp;


      switch ((r->flags & 0xff))
 {
         case 8:
           __write_memory ((void *) reloc_target, &reldata, 1);
    break;
  case 16:
           __write_memory ((void *) reloc_target, &reldata, 2);
    break;
  case 32:
           __write_memory ((void *) reloc_target, &reldata, 4);
    break;





 }
     }
}
