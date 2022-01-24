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
typedef  int uint64_t ;
struct sproto_arg {scalar_t__ tagname; int type; int length; int mainindex; scalar_t__ tagid; int /*<<< orphan*/  index; scalar_t__ value; int /*<<< orphan*/  subtype; int /*<<< orphan*/  extra; struct decode_ud* ud; } ;
struct decode_ud {scalar_t__ deep; scalar_t__ array_tag; int result_index; int array_index; int mainindex_tag; int key_index; int /*<<< orphan*/ * L; } ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  lua_Number ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 scalar_t__ ENCODE_DEEPLEVEL ; 
 int SPROTO_CB_ERROR ; 
#define  SPROTO_TBOOLEAN 131 
#define  SPROTO_TINTEGER 130 
#define  SPROTO_TSTRING 129 
#define  SPROTO_TSTRUCT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int FUNC16 (int /*<<< orphan*/ ,scalar_t__,int,int (*) (struct sproto_arg const*),struct decode_ud*) ; 

__attribute__((used)) static int
FUNC17(const struct sproto_arg *args) {
	struct decode_ud * self = args->ud;
	lua_State *L = self->L;
	if (self->deep >= ENCODE_DEEPLEVEL)
		return FUNC1(L, "The table is too deep");
	FUNC0(L, 12, NULL);
	if (args->index != 0) {
		// It's array
		if (args->tagname != self->array_tag) {
			self->array_tag = args->tagname;
			FUNC4(L);
			FUNC10(L, -1);
			FUNC12(L, self->result_index, args->tagname);
			if (self->array_index) {
				FUNC11(L, self->array_index);
			} else {
				self->array_index = FUNC2(L);
			}
			if (args->index < 0) {
				// It's a empty array, return now.
				return 0;
			}
		}
	}
	switch (args->type) {
	case SPROTO_TINTEGER: {
		// notice: in lua 5.2, 52bit integer support (not 64)
		if (args->extra) {
			// lua_Integer is 32bit in small lua.
			int64_t v = *(int64_t*)args->value;
			lua_Number vn = (lua_Number)v;
			vn /= args->extra;
			FUNC9(L, vn);
		} else {
			int64_t v = *(int64_t*)args->value;
			FUNC6(L, v);
		}
		break;
	}
	case SPROTO_TBOOLEAN: {
		int v = *(uint64_t*)args->value;
		FUNC5(L,v);
		break;
	}
	case SPROTO_TSTRING: {
		FUNC7(L, args->value, args->length);
		break;
	}
	case SPROTO_TSTRUCT: {
		struct decode_ud sub;
		int r;
		FUNC4(L);
		sub.L = L;
		sub.result_index = FUNC2(L);
		sub.deep = self->deep + 1;
		sub.array_index = 0;
		sub.array_tag = NULL;
		if (args->mainindex >= 0) {
			// This struct will set into a map, so mark the main index tag.
			sub.mainindex_tag = args->mainindex;
			FUNC8(L);
			sub.key_index = FUNC2(L);

			r = FUNC16(args->subtype, args->value, args->length, decode, &sub);
			if (r < 0)
				return SPROTO_CB_ERROR;
			if (r != args->length)
				return r;
			FUNC10(L, sub.key_index);
			if (FUNC3(L, -1)) {
				FUNC1(L, "Can't find main index (tag=%d) in [%s]", args->mainindex, args->tagname);
			}
			FUNC10(L, sub.result_index);
			FUNC14(L, self->array_index);
			FUNC15(L, sub.result_index-1);
			return 0;
		} else {
			sub.mainindex_tag = -1;
			sub.key_index = 0;
			r = FUNC16(args->subtype, args->value, args->length, decode, &sub);
			if (r < 0)
				return SPROTO_CB_ERROR;
			if (r != args->length)
				return r;
			FUNC15(L, sub.result_index);
			break;
		}
	}
	default:
		FUNC1(L, "Invalid type");
	}
	if (args->index > 0) {
		FUNC13(L, self->array_index, args->index);
	} else {
		if (self->mainindex_tag == args->tagid) {
			// This tag is marked, save the value to key_index
			// assert(self->key_index > 0);
			FUNC10(L,-1);
			FUNC11(L, self->key_index);
		}
		FUNC12(L, self->result_index, args->tagname);
	}

	return 0;
}