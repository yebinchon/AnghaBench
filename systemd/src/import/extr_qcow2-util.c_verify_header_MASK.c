#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ incompatible_features; } ;
typedef  TYPE_1__ Header ;

/* Variables and functions */
 int EBADMSG ; 
 int EOPNOTSUPP ; 
 int FUNC0 (TYPE_1__ const*) ; 
 int FUNC1 (TYPE_1__ const*) ; 
 scalar_t__ FUNC2 (TYPE_1__ const*) ; 
 int FUNC3 (TYPE_1__ const*) ; 
 int FUNC4 (TYPE_1__ const*) ; 
 scalar_t__ FUNC5 (TYPE_1__ const*) ; 
 int FUNC6 (TYPE_1__ const*) ; 
 int FUNC7 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int) ; 
 scalar_t__ QCOW2_MAGIC ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__ const*) ; 

__attribute__((used)) static int FUNC10(const Header *header) {
        FUNC9(header);

        if (FUNC5(header) != QCOW2_MAGIC)
                return -EBADMSG;

        if (!FUNC8(FUNC7(header), 2, 3))
                return -EOPNOTSUPP;

        if (FUNC2(header) != 0)
                return -EOPNOTSUPP;

        if (FUNC0(header) < 9) /* 512K */
                return -EBADMSG;

        if (FUNC0(header) > 21) /* 2MB */
                return -EBADMSG;

        if (FUNC6(header) % FUNC1(header) != 0)
                return -EBADMSG;

        if (FUNC4(header) > 32*1024*1024) /* 32MB */
                return -EBADMSG;

        if (FUNC7(header) == 3) {

                if (header->incompatible_features != 0)
                        return -EOPNOTSUPP;

                if (FUNC3(header) < sizeof(Header))
                        return -EBADMSG;
        }

        return 0;
}