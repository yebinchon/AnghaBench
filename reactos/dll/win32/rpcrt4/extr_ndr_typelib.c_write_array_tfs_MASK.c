#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t USHORT ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_9__ {int /*<<< orphan*/  vt; } ;
struct TYPE_8__ {size_t cDims; TYPE_1__* rgbounds; TYPE_3__ tdescElem; } ;
struct TYPE_7__ {int /*<<< orphan*/  cElements; } ;
typedef  int /*<<< orphan*/  ITypeInfo ;
typedef  TYPE_2__ ARRAYDESC ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 unsigned char FC_EMBEDDED_COMPLEX ; 
 unsigned char FC_END ; 
 unsigned char FC_LGFARRAY ; 
 unsigned char FC_PAD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,size_t,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,size_t,size_t) ; 
 unsigned char FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 unsigned char FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 size_t FUNC7 (int /*<<< orphan*/ *,unsigned char*,size_t*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC8(ITypeInfo *typeinfo, unsigned char *str,
    size_t *len, ARRAYDESC *desc)
{
    unsigned char fc = FUNC4(typeinfo, &desc->tdescElem);
    ULONG size = FUNC6(typeinfo, &desc->tdescElem);
    unsigned char basetype;
    size_t ref = 0, off;
    USHORT i;

    if (fc != FC_LGFARRAY)
        FUNC0("complex arrays not implemented\n");

    if (!(basetype = FUNC5(desc->tdescElem.vt)))
        ref = FUNC7(typeinfo, str, len, &desc->tdescElem, FALSE, FALSE);

    /* In theory arrays should be nested, but there's no reason not to marshal
     * [x][y] as [x*y]. */
    for (i = 0; i < desc->cDims; i++) size *= desc->rgbounds[i].cElements;

    off = *len;

    FUNC1(str, *len, FC_LGFARRAY);
    FUNC1(str, *len, 0);
    FUNC2 (str, *len, size);
    if (basetype)
        FUNC1(str, *len, basetype);
    else
    {
        FUNC1 (str, *len, FC_EMBEDDED_COMPLEX);
        FUNC1 (str, *len, 0);
        FUNC3(str, *len, ref - *len);
        FUNC1 (str, *len, FC_PAD);
    }
    FUNC1(str, *len, FC_END);

    return off;
}