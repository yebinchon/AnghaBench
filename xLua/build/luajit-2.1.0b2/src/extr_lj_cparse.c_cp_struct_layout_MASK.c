#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int* packstack; size_t curpack; int /*<<< orphan*/  cts; } ;
struct TYPE_8__ {int info; int size; scalar_t__ sib; } ;
typedef  scalar_t__ CTypeID ;
typedef  TYPE_1__ CType ;
typedef  int CTSize ;
typedef  int CTInfo ;
typedef  TYPE_2__ CPState ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CTA_SUBTYPE ; 
 int CTBSZ_FIELD ; 
 int CTFP_ALIGNED ; 
 int CTFP_PACKED ; 
 int CTF_BOOL ; 
 int CTF_QUAL ; 
 int CTF_UNION ; 
 int CTF_UNSIGNED ; 
 int CTF_VLA ; 
 void* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int CTSHIFT_BITBSZ ; 
 int CTSHIFT_BITCSZ ; 
 int CTSHIFT_BITPOS ; 
 int CTSIZE_INVALID ; 
 int /*<<< orphan*/  CT_BITFIELD ; 
 int /*<<< orphan*/  CT_FIELD ; 
 int /*<<< orphan*/  LJ_ERR_FFI_INVSIZE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,TYPE_1__*,int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static void FUNC12(CPState *cp, CTypeID sid, CTInfo sattr)
{
  CTSize bofs = 0, bmaxofs = 0;  /* Bit offset and max. bit offset. */
  CTSize maxalign = FUNC4(sattr);
  CType *sct = FUNC7(cp->cts, sid);
  CTInfo sinfo = sct->info;
  CTypeID fieldid = sct->sib;
  while (fieldid) {
    CType *ct = FUNC7(cp->cts, fieldid);
    CTInfo attr = ct->size;  /* Field declaration attributes (temp.). */

    if (FUNC9(ct->info) ||
	(FUNC10(ct->info, CTA_SUBTYPE) && attr)) {
      CTSize align, amask;  /* Alignment (pow2) and alignment mask (bits). */
      CTSize sz;
      CTInfo info = FUNC11(cp->cts, FUNC6(ct->info), &sz);
      CTSize bsz, csz = 8*sz;  /* Field size and container size (in bits). */
      sinfo |= (info & (CTF_QUAL|CTF_VLA));  /* Merge pseudo-qualifiers. */

      /* Check for size overflow and determine alignment. */
      if (sz >= 0x20000000u || bofs + csz < bofs || (info & CTF_VLA)) {
	if (!(sz == CTSIZE_INVALID && FUNC8(info) &&
	      !(sinfo & CTF_UNION)))
	  FUNC2(cp, LJ_ERR_FFI_INVSIZE);
	csz = sz = 0;  /* Treat a[] and a[?] as zero-sized. */
      }
      align = FUNC3(cp, ct, info);
      if (((attr|sattr) & CTFP_PACKED) ||
	  ((attr & CTFP_ALIGNED) && FUNC4(attr) > align))
	align = FUNC4(attr);
      if (cp->packstack[cp->curpack] < align)
	align = cp->packstack[cp->curpack];
      if (align > maxalign) maxalign = align;
      amask = (8u << align) - 1;

      bsz = FUNC5(ct->info);  /* Bitfield size (temp.). */
      if (bsz == CTBSZ_FIELD || !FUNC9(ct->info)) {
	bsz = csz;  /* Regular fields or subtypes always fill the container. */
	bofs = (bofs + amask) & ~amask;  /* Start new aligned field. */
	ct->size = (bofs >> 3);  /* Store field offset. */
      } else {  /* Bitfield. */
	if (bsz == 0 || (attr & CTFP_ALIGNED) ||
	    (!((attr|sattr) & CTFP_PACKED) && (bofs & amask) + bsz > csz))
	  bofs = (bofs + amask) & ~amask;  /* Start new aligned field. */

	/* Prefer regular field over bitfield. */
	if (bsz == csz && (bofs & amask) == 0) {
	  ct->info = FUNC1(CT_FIELD, FUNC6(ct->info));
	  ct->size = (bofs >> 3);  /* Store field offset. */
	} else {
	  ct->info = FUNC1(CT_BITFIELD,
	    (info & (CTF_QUAL|CTF_UNSIGNED|CTF_BOOL)) +
	    (csz << (CTSHIFT_BITCSZ-3)) + (bsz << CTSHIFT_BITBSZ));
#if LJ_BE
	  ct->info += ((csz - (bofs & (csz-1)) - bsz) << CTSHIFT_BITPOS);
#else
	  ct->info += ((bofs & (csz-1)) << CTSHIFT_BITPOS);
#endif
	  ct->size = ((bofs & ~(csz-1)) >> 3);  /* Store container offset. */
	}
      }

      /* Determine next offset or max. offset. */
      if ((sinfo & CTF_UNION)) {
	if (bsz > bmaxofs) bmaxofs = bsz;
      } else {
	bofs += bsz;
      }
    }  /* All other fields in the chain are already set up. */

    fieldid = ct->sib;
  }

  /* Complete struct/union. */
  sct->info = sinfo + FUNC0(maxalign);
  bofs = (sinfo & CTF_UNION) ? bmaxofs : bofs;
  maxalign = (8u << maxalign) - 1;
  sct->size = (((bofs + maxalign) & ~maxalign) >> 3);
}