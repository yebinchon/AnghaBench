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
typedef  int UINT ;
struct TYPE_4__ {int member_0; int* member_1; int idLength; int /*<<< orphan*/  ids; } ;
typedef  scalar_t__ INT ;
typedef  TYPE_1__ AsnObjectIdentifier ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 

__attribute__((used)) static void FUNC3(void)
{
    INT ret;
    static UINT ids1[] = { 1, 2, 3, 4 };
    static UINT ids2[] = { 5, 6, 7, 8 };
    static AsnObjectIdentifier oid1 = { 4, ids1 };
    static AsnObjectIdentifier oid2 = { 4, ids2 };

    /* This crashes under win98 */
    if(0)
    {
        ret = FUNC0(NULL, NULL, 0);
        FUNC2(!ret, "SnmpUtilOidNCmp succeeded\n");

        ret = FUNC0(NULL, NULL, 1);
        FUNC2(!ret, "SnmpUtilOidNCmp succeeded\n");

        ret = FUNC0(&oid1, NULL, 0);
        FUNC2(!ret, "SnmpUtilOidNCmp succeeded\n");

        ret = FUNC0(&oid1, NULL, 1);
        FUNC2(!ret, "SnmpUtilOidNCmp succeeded\n");

        ret = FUNC0(NULL, &oid2, 0);
        FUNC2(!ret, "SnmpUtilOidNCmp succeeded\n");

        ret = FUNC0(NULL, &oid2, 1);
        FUNC2(!ret, "SnmpUtilOidNCmp succeeded\n");
    }

    ret = FUNC0(&oid1, &oid1, 0);
    FUNC2(!ret, "SnmpUtilOidNCmp failed\n");

    ret = FUNC0(&oid1, &oid1, 4);
    FUNC2(!ret, "SnmpUtilOidNCmp failed\n");

    ret = FUNC0(&oid1, &oid2, 4);
    FUNC2(ret < 0, "SnmpUtilOidNCmp failed: %d\n", ret);

    ret = FUNC0(&oid2, &oid1, 4);
    FUNC2(ret > 0, "SnmpUtilOidNCmp failed: %d\n", ret);

    oid1.idLength = 3;
    FUNC1(oid1.ids, oid2.ids, sizeof(UINT) * 4);
    ret = FUNC0(&oid1, &oid1, 4);
    FUNC2(!ret, "SnmpUtilOidNCmp failed: %d\n", ret);
    ret = FUNC0(&oid2, &oid1, 4);
    FUNC2(ret > 0, "SnmpUtilOidNCmp failed: %d\n", ret);
    ret = FUNC0(&oid1, &oid2, 4);
    FUNC2(ret < 0, "SnmpUtilOidNCmp failed: %d\n", ret);

    ret = FUNC0(&oid1, &oid2, 2);
    FUNC2(!ret, "SnmpUtilOidNCmp failed: %d\n", ret);
    ret = FUNC0(&oid2, &oid1, 2);
    FUNC2(!ret, "SnmpUtilOidNCmp failed: %d\n", ret);
}