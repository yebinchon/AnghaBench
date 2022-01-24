#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct _cms_typehandler_struct {int dummy; } ;
typedef  int /*<<< orphan*/  cmsUInt32Number ;
typedef  int cmsTagTypeSignature ;
typedef  int /*<<< orphan*/  cmsMLU ;
typedef  int /*<<< orphan*/  cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsBool ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct _cms_typehandler_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct _cms_typehandler_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct _cms_typehandler_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
#define  cmsSigMultiLocalizedUnicodeType 130 
#define  cmsSigTextDescriptionType 129 
#define  cmsSigTextType 128 

__attribute__((used)) static
cmsBool FUNC5(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsMLU** mlu, cmsUInt32Number SizeOfTag)
{
    cmsTagTypeSignature  BaseType;
    cmsUInt32Number nItems;

    BaseType = FUNC3(ContextID, io);

    switch (BaseType) {

       case cmsSigTextType:
           if (*mlu) FUNC4(ContextID, *mlu);
           *mlu = (cmsMLU*)FUNC2(ContextID, self, io, &nItems, SizeOfTag);
           return (*mlu != NULL);

       case cmsSigTextDescriptionType:
           if (*mlu) FUNC4(ContextID, *mlu);
           *mlu =  (cmsMLU*) FUNC1(ContextID, self, io, &nItems, SizeOfTag);
           return (*mlu != NULL);

           /*
           TBD: Size is needed for MLU, and we have no idea on which is the available size
           */

       case cmsSigMultiLocalizedUnicodeType:
           if (*mlu) FUNC4(ContextID, *mlu);
           *mlu =  (cmsMLU*) FUNC0(ContextID, self, io, &nItems, SizeOfTag);
           return (*mlu != NULL);

       default: return FALSE;
    }
}