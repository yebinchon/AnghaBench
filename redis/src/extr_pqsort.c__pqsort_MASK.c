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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,size_t) ; 
 char* FUNC1 (char*,char*,char*,int (*) (void const*,void const*)) ; 
 size_t FUNC2 (size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,size_t) ; 

__attribute__((used)) static void
FUNC5(void *a, size_t n, size_t es,
    int (*cmp) (const void *, const void *), void *lrange, void *rrange)
{
	char *pa, *pb, *pc, *pd, *pl, *pm, *pn;
	size_t d, r;
	int swaptype, cmp_result;

loop:	FUNC0(a, es);
	if (n < 7) {
		for (pm = (char *) a + es; pm < (char *) a + n * es; pm += es)
			for (pl = pm; pl > (char *) a && cmp(pl - es, pl) > 0;
			     pl -= es)
				FUNC3(pl, pl - es);
		return;
	}
	pm = (char *) a + (n / 2) * es;
	if (n > 7) {
		pl = (char *) a;
		pn = (char *) a + (n - 1) * es;
		if (n > 40) {
			d = (n / 8) * es;
			pl = FUNC1(pl, pl + d, pl + 2 * d, cmp);
			pm = FUNC1(pm - d, pm, pm + d, cmp);
			pn = FUNC1(pn - 2 * d, pn - d, pn, cmp);
		}
		pm = FUNC1(pl, pm, pn, cmp);
	}
	FUNC3(a, pm);
	pa = pb = (char *) a + es;

	pc = pd = (char *) a + (n - 1) * es;
	for (;;) {
		while (pb <= pc && (cmp_result = cmp(pb, a)) <= 0) {
			if (cmp_result == 0) {
				FUNC3(pa, pb);
				pa += es;
			}
			pb += es;
		}
		while (pb <= pc && (cmp_result = cmp(pc, a)) >= 0) {
			if (cmp_result == 0) {
				FUNC3(pc, pd);
				pd -= es;
			}
			pc -= es;
		}
		if (pb > pc)
			break;
		FUNC3(pb, pc);
		pb += es;
		pc -= es;
	}

	pn = (char *) a + n * es;
	r = FUNC2(pa - (char *) a, pb - pa);
	FUNC4(a, pb - r, r);
	r = FUNC2((size_t)(pd - pc), pn - pd - es);
	FUNC4(pb, pn - r, r);
	if ((r = pb - pa) > es) {
                void *_l = a, *_r = ((unsigned char*)a)+r-1;
                if (!((lrange < _l && rrange < _l) ||
                    (lrange > _r && rrange > _r)))
		    FUNC5(a, r / es, es, cmp, lrange, rrange);
        }
	if ((r = pd - pc) > es) {
                void *_l, *_r;

		/* Iterate rather than recurse to save stack space */
		a = pn - r;
		n = r / es;

                _l = a;
                _r = ((unsigned char*)a)+r-1;
                if (!((lrange < _l && rrange < _l) ||
                    (lrange > _r && rrange > _r)))
		    goto loop;
	}
/*		qsort(pn - r, r / es, es, cmp);*/
}