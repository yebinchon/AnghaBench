#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct _cms_typehandler_struct {int dummy; } ;
typedef  int cmsUInt32Number ;
typedef  void cmsSEQ ;
struct TYPE_6__ {int (* Tell ) (int /*<<< orphan*/ ,TYPE_1__*) ;} ;
typedef  TYPE_1__ cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  _cmsTagBase ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct _cms_typehandler_struct*,TYPE_1__*,int,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ReadSeqID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static
void *FUNC5(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsSEQ* OutSeq;
    cmsUInt32Number Count;
    cmsUInt32Number BaseOffset;

    *nItems = 0;

    // Get actual position as a basis for element offsets
    BaseOffset = io ->Tell(ContextID, io) - sizeof(_cmsTagBase);

    // Get table count
    if (!FUNC1(ContextID, io, &Count)) return NULL;
    SizeOfTag -= sizeof(cmsUInt32Number);

    // Allocate an empty structure
    OutSeq = FUNC2(ContextID, Count);
    if (OutSeq == NULL) return NULL;


    // Read the position table
    if (!FUNC0(ContextID, self, io, Count, BaseOffset, OutSeq, ReadSeqID)) {

        FUNC3(ContextID, OutSeq);
        return NULL;
    }

    // Success
    *nItems = 1;
    return OutSeq;

}