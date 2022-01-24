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
typedef  int uint32_t ;
struct sproto_type {int n; int maxn; int base; struct field* f; int /*<<< orphan*/  name; } ;
struct sproto {int /*<<< orphan*/  memory; } ;
struct field {int tag; } ;

/* Variables and functions */
 int SIZEOF_FIELD ; 
 int SIZEOF_HEADER ; 
 int SIZEOF_LENGTH ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (struct sproto*,struct field*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (struct sproto*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (struct sproto_type*,int /*<<< orphan*/ ,int) ; 
 struct field* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/  const*,int) ; 
 int FUNC6 (int /*<<< orphan*/  const*) ; 
 int FUNC7 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static const uint8_t *
FUNC8(struct sproto *s, struct sproto_type *t, const uint8_t * stream) {
	const uint8_t * result;
	uint32_t sz = FUNC6(stream);
	int i;
	int fn;
	int n;
	int maxn;
	int last;
	stream += SIZEOF_LENGTH;
	result = stream + sz;
	fn = FUNC5(stream, sz);
	if (fn <= 0 || fn > 2)
		return NULL;
	for (i=0;i<fn*SIZEOF_FIELD;i+=SIZEOF_FIELD) {
		// name and fields must encode to 0
		int v = FUNC7(stream + SIZEOF_HEADER + i);
		if (v != 0)
			return NULL;
	}
	FUNC3(t, 0, sizeof(*t));
	stream += SIZEOF_HEADER + fn * SIZEOF_FIELD;
	t->name = FUNC2(s, stream);
	if (fn == 1) {
		return result;
	}
	stream += FUNC6(stream)+SIZEOF_LENGTH;	// second data
	n = FUNC0(stream);
	if (n<0)
		return NULL;
	stream += SIZEOF_LENGTH;
	maxn = n;
	last = -1;
	t->n = n;
	t->f = FUNC4(&s->memory, sizeof(struct field) * n);
	for (i=0;i<n;i++) {
		int tag;
		struct field *f = &t->f[i];
		stream = FUNC1(s, f, stream);
		if (stream == NULL)
			return NULL;
		tag = f->tag;
		if (tag <= last)
			return NULL;	// tag must in ascending order
		if (tag > last+1) {
			++maxn;
		}
		last = tag;
	}
	t->maxn = maxn;
	t->base = t->f[0].tag;
	n = t->f[n-1].tag - t->base + 1;
	if (n != t->n) {
		t->base = -1;
	}
	return result;
}