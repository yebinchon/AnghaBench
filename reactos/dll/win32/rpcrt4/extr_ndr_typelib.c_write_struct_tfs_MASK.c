#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int cbAlignment; int /*<<< orphan*/  cbSizeInstance; } ;
typedef  TYPE_1__ TYPEATTR ;
typedef  int /*<<< orphan*/  ITypeInfo ;

/* Variables and functions */
 int FC_END ; 
 int FC_PAD ; 
 unsigned char FC_STRUCT ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,size_t,int /*<<< orphan*/ ) ; 
 unsigned char FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static size_t FUNC4(ITypeInfo *typeinfo, unsigned char *str,
        size_t *len, TYPEATTR *attr)
{
    unsigned char fc = FUNC3(typeinfo, attr);
    size_t off = *len;

    if (fc != FC_STRUCT)
        FUNC0("fc %02x not implemented\n", fc);

    FUNC1 (str, *len, FC_STRUCT);
    FUNC1 (str, *len, attr->cbAlignment - 1);
    FUNC2(str, *len, attr->cbSizeInstance);
    FUNC1 (str, *len, FC_PAD);
    FUNC1 (str, *len, FC_END);

    return off;
}