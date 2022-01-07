
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int* packstack; size_t curpack; int cts; } ;
struct TYPE_8__ {int info; int size; scalar_t__ sib; } ;
typedef scalar_t__ CTypeID ;
typedef TYPE_1__ CType ;
typedef int CTSize ;
typedef int CTInfo ;
typedef TYPE_2__ CPState ;


 int CTALIGN (int) ;
 int CTA_SUBTYPE ;
 int CTBSZ_FIELD ;
 int CTFP_ALIGNED ;
 int CTFP_PACKED ;
 int CTF_BOOL ;
 int CTF_QUAL ;
 int CTF_UNION ;
 int CTF_UNSIGNED ;
 int CTF_VLA ;
 void* CTINFO (int ,int) ;
 int CTSHIFT_BITBSZ ;
 int CTSHIFT_BITCSZ ;
 int CTSHIFT_BITPOS ;
 int CTSIZE_INVALID ;
 int CT_BITFIELD ;
 int CT_FIELD ;
 int LJ_ERR_FFI_INVSIZE ;
 int cp_err (TYPE_2__*,int ) ;
 int cp_field_align (TYPE_2__*,TYPE_1__*,int) ;
 int ctype_align (int) ;
 int ctype_bitcsz (int) ;
 int ctype_cid (int) ;
 TYPE_1__* ctype_get (int ,scalar_t__) ;
 scalar_t__ ctype_isarray (int) ;
 scalar_t__ ctype_isfield (int) ;
 scalar_t__ ctype_isxattrib (int,int ) ;
 int lj_ctype_info (int ,int,int*) ;

__attribute__((used)) static void cp_struct_layout(CPState *cp, CTypeID sid, CTInfo sattr)
{
  CTSize bofs = 0, bmaxofs = 0;
  CTSize maxalign = ctype_align(sattr);
  CType *sct = ctype_get(cp->cts, sid);
  CTInfo sinfo = sct->info;
  CTypeID fieldid = sct->sib;
  while (fieldid) {
    CType *ct = ctype_get(cp->cts, fieldid);
    CTInfo attr = ct->size;

    if (ctype_isfield(ct->info) ||
 (ctype_isxattrib(ct->info, CTA_SUBTYPE) && attr)) {
      CTSize align, amask;
      CTSize sz;
      CTInfo info = lj_ctype_info(cp->cts, ctype_cid(ct->info), &sz);
      CTSize bsz, csz = 8*sz;
      sinfo |= (info & (CTF_QUAL|CTF_VLA));


      if (sz >= 0x20000000u || bofs + csz < bofs || (info & CTF_VLA)) {
 if (!(sz == CTSIZE_INVALID && ctype_isarray(info) &&
       !(sinfo & CTF_UNION)))
   cp_err(cp, LJ_ERR_FFI_INVSIZE);
 csz = sz = 0;
      }
      align = cp_field_align(cp, ct, info);
      if (((attr|sattr) & CTFP_PACKED) ||
   ((attr & CTFP_ALIGNED) && ctype_align(attr) > align))
 align = ctype_align(attr);
      if (cp->packstack[cp->curpack] < align)
 align = cp->packstack[cp->curpack];
      if (align > maxalign) maxalign = align;
      amask = (8u << align) - 1;

      bsz = ctype_bitcsz(ct->info);
      if (bsz == CTBSZ_FIELD || !ctype_isfield(ct->info)) {
 bsz = csz;
 bofs = (bofs + amask) & ~amask;
 ct->size = (bofs >> 3);
      } else {
 if (bsz == 0 || (attr & CTFP_ALIGNED) ||
     (!((attr|sattr) & CTFP_PACKED) && (bofs & amask) + bsz > csz))
   bofs = (bofs + amask) & ~amask;


 if (bsz == csz && (bofs & amask) == 0) {
   ct->info = CTINFO(CT_FIELD, ctype_cid(ct->info));
   ct->size = (bofs >> 3);
 } else {
   ct->info = CTINFO(CT_BITFIELD,
     (info & (CTF_QUAL|CTF_UNSIGNED|CTF_BOOL)) +
     (csz << (CTSHIFT_BITCSZ-3)) + (bsz << CTSHIFT_BITBSZ));



   ct->info += ((bofs & (csz-1)) << CTSHIFT_BITPOS);

   ct->size = ((bofs & ~(csz-1)) >> 3);
 }
      }


      if ((sinfo & CTF_UNION)) {
 if (bsz > bmaxofs) bmaxofs = bsz;
      } else {
 bofs += bsz;
      }
    }

    fieldid = ct->sib;
  }


  sct->info = sinfo + CTALIGN(maxalign);
  bofs = (sinfo & CTF_UNION) ? bmaxofs : bofs;
  maxalign = (8u << maxalign) - 1;
  sct->size = (((bofs + maxalign) & ~maxalign) >> 3);
}
