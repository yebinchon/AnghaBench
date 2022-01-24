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
struct sproto {int type_n; int /*<<< orphan*/ * type; } ;
struct field {int tag; int type; int key; int extra; int /*<<< orphan*/ * name; int /*<<< orphan*/ * st; } ;

/* Variables and functions */
 int SIZEOF_FIELD ; 
 int /*<<< orphan*/  SIZEOF_HEADER ; 
 int /*<<< orphan*/  SIZEOF_LENGTH ; 
 int SPROTO_TARRAY ; 
 int SPROTO_TINTEGER ; 
 int SPROTO_TSTRING ; 
 int SPROTO_TSTRUCT ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/ * FUNC1 (struct sproto*,int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static const uint8_t *
FUNC5(struct sproto *s, struct field *f, const uint8_t * stream) {
	uint32_t sz;
	const uint8_t * result;
	int fn;
	int i;
	int array = 0;
	int tag = -1;
	f->tag = -1;
	f->type = -1;
	f->name = NULL;
	f->st = NULL;
	f->key = -1;
	f->extra = 0;

	sz = FUNC3(stream);
	stream += SIZEOF_LENGTH;
	result = stream + sz;
	fn = FUNC2(stream, sz);
	if (fn < 0)
		return NULL;
	stream += SIZEOF_HEADER;
	for (i=0;i<fn;i++) {
		int value;
		++tag;
		value = FUNC4(stream + SIZEOF_FIELD * i);
		if (value & 1) {
			tag+= value/2;
			continue;
		}
		if (tag == 0) { // name
			if (value != 0)
				return NULL;
			f->name = FUNC1(s, stream + fn * SIZEOF_FIELD);
			continue;
		}
		if (value == 0)
			return NULL;
		value = value/2 - 1;
		switch(tag) {
		case 1: // buildin
			if (value >= SPROTO_TSTRUCT)
				return NULL;	// invalid buildin type
			f->type = value;
			break;
		case 2: // type index
			if (f->type == SPROTO_TINTEGER) {
				f->extra = FUNC0(10, value);
			} else if (f->type == SPROTO_TSTRING) {
				f->extra = value;	// string if 0 ; binary is 1
			} else {
				if (value >= s->type_n)
					return NULL;	// invalid type index
				if (f->type >= 0)
					return NULL;
				f->type = SPROTO_TSTRUCT;
				f->st = &s->type[value];
			}
			break;
		case 3: // tag
			f->tag = value;
			break;
		case 4: // array
			if (value)
				array = SPROTO_TARRAY;
			break;
		case 5:	// key
			f->key = value;
			break;
		default:
			return NULL;
		}
	}
	if (f->tag < 0 || f->type < 0 || f->name == NULL)
		return NULL;
	f->type |= array;

	return result;
}