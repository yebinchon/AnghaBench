#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ulong ;
typedef  int uchar ;
struct TYPE_21__ {size_t name; int off; int type; int haveoff; } ;
struct TYPE_20__ {int nattr; TYPE_1__* attr; int /*<<< orphan*/  haskids; int /*<<< orphan*/  tag; } ;
struct TYPE_19__ {int /*<<< orphan*/  haskids; int /*<<< orphan*/  tag; } ;
struct TYPE_18__ {int /*<<< orphan*/  d; } ;
struct TYPE_17__ {int name; int form; } ;
typedef  TYPE_2__ DwarfBuf ;
typedef  TYPE_3__ DwarfAttrs ;
typedef  TYPE_4__ DwarfAbbrev ;

/* Variables and functions */
 int DwarfAttrMax ; 
 size_t DwarfAttrName ; 
 int FormIndirect ; 
 int TAddress ; 
 int TBlock ; 
 int TConstant ; 
 int TFlag ; 
 int TReference ; 
 int TString ; 
 int FUNC0 (int /*<<< orphan*/ ,void*,void*) ; 
 int FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int,void*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int,void*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int,void*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ,void*,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 TYPE_6__* plist ; 
 TYPE_6__* ptab ; 
 scalar_t__ FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 

__attribute__((used)) static int
FUNC9(DwarfBuf *b, ulong unit, DwarfAbbrev *a, DwarfAttrs *attrs)
{
	int i, f, n, got;
	static int nbad;
	void *v;

	/* initialize ptab first time through for quick access */
	if(ptab[DwarfAttrName].name != DwarfAttrName)
		for(i=0; plist[i].name; i++)
			ptab[plist[i].name] = plist[i];

	FUNC6(attrs, 0, sizeof *attrs);
	attrs->tag = a->tag;
	attrs->haskids = a->haskids;

	for(i=0; i<a->nattr; i++){
		n = a->attr[i].name;
		f = a->attr[i].form;
		if(n < 0 || n >= DwarfAttrMax || ptab[n].name==0){
			if(++nbad == 1)
				FUNC8("dwarf parse attrs: unexpected attribute name 0x%x", n);
			continue; //return -1;
		}
		v = (char*)attrs + ptab[n].off;
		got = 0;
		if(f == FormIndirect)
			f = FUNC1(b);
		if((ptab[n].type&(TConstant|TReference|TAddress))
		&& FUNC5(b, f, unit, v, &got) >= 0)
			;
		else if((ptab[n].type&TFlag) && FUNC4(b, f, v) >= 0)
			got = TFlag;
		else if((ptab[n].type&TString) && FUNC3(b, f, v) >= 0)
			got = TString;
		else if((ptab[n].type&TBlock) && FUNC2(b, f, v) >= 0)
			got = TBlock;
		else{
			if(FUNC7(b, f) < 0){
				if(++nbad == 1)
					FUNC8("dwarf parse attrs: cannot skip form %d", f);
				return -1;
			}
		}
		if(got == TBlock && (ptab[n].type&TConstant))
			got = FUNC0(b->d, v, v);
		*((uchar*)attrs+ptab[n].haveoff) = got;
	}
	return 0;
}