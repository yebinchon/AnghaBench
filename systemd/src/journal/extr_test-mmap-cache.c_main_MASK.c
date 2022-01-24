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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  MMapFileDescriptor ;
typedef  int /*<<< orphan*/  MMapCache ;

/* Variables and functions */
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,unsigned long long,int,int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int FUNC9(int argc, char *argv[]) {
        MMapFileDescriptor *fx;
        int x, y, z, r;
        char px[] = "/tmp/testmmapXXXXXXX", py[] = "/tmp/testmmapYXXXXXX", pz[] = "/tmp/testmmapZXXXXXX";
        MMapCache *m;
        void *p, *q;

        FUNC0(*(m = FUNC5()));

        x = FUNC1(px);
        FUNC0(x >= 0);
        FUNC8(px);

        FUNC0(*(fx = FUNC2(m, x)));

        y = FUNC1(py);
        FUNC0(y >= 0);
        FUNC8(py);

        z = FUNC1(pz);
        FUNC0(z >= 0);
        FUNC8(pz);

        r = FUNC4(m, fx, PROT_READ, 0, false, 1, 2, NULL, &p, NULL);
        FUNC0(r >= 0);

        r = FUNC4(m, fx, PROT_READ, 0, false, 2, 2, NULL, &q, NULL);
        FUNC0(r >= 0);

        FUNC0((uint8_t*) p + 1 == (uint8_t*) q);

        r = FUNC4(m, fx, PROT_READ, 1, false, 3, 2, NULL, &q, NULL);
        FUNC0(r >= 0);

        FUNC0((uint8_t*) p + 2 == (uint8_t*) q);

        r = FUNC4(m, fx, PROT_READ, 0, false, 16ULL*1024ULL*1024ULL, 2, NULL, &p, NULL);
        FUNC0(r >= 0);

        r = FUNC4(m, fx, PROT_READ, 1, false, 16ULL*1024ULL*1024ULL+1, 2, NULL, &q, NULL);
        FUNC0(r >= 0);

        FUNC0((uint8_t*) p + 1 == (uint8_t*) q);

        FUNC3(m, fx);
        FUNC6(m);

        FUNC7(x);
        FUNC7(y);
        FUNC7(z);

        return 0;
}