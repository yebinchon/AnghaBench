#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_5__ {int member_0; int* member_1; int idLength; int* ids; } ;
typedef  int INT ;
typedef  TYPE_1__ AsnObjectIdentifier ;

/* Variables and functions */
 int* FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 

__attribute__((used)) static void FUNC5(void)
{
    INT ret;
    UINT *ids1;
    static UINT ids2[] = { 4, 5, 6 };
    static AsnObjectIdentifier oid1;
    static AsnObjectIdentifier oid2 = { 3, ids2 };

    ids1 = FUNC0(3 * sizeof(UINT));
    ids1[0] = 1;
    ids1[1] = 2;
    ids1[2] = 3;

    oid1.idLength = 3;
    oid1.ids = ids1;

    /* This crashes under win98 */
    if(0)
    {
        ret = FUNC1(NULL, NULL);
        FUNC4(!ret, "SnmpUtilOidAppend succeeded\n");

        ret = FUNC1(&oid1, NULL);
        FUNC4(ret, "SnmpUtilOidAppend failed\n");

        ret = FUNC1(NULL, &oid2);
        FUNC4(!ret, "SnmpUtilOidAppend succeeded\n");
    }

    ret = FUNC1(&oid1, &oid2);
    FUNC4(ret, "SnmpUtilOidAppend failed\n");
    FUNC4(oid1.idLength == 6, "SnmpUtilOidAppend failed\n");
    FUNC4(!FUNC3(&oid1.ids[3], ids2, 3 * sizeof(UINT)),
       "SnmpUtilOidAppend failed\n");

    FUNC2(&oid1);
}