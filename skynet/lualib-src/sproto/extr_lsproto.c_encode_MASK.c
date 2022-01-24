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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct sproto_arg {scalar_t__ tagname; scalar_t__ mainindex; int type; int extra; size_t length; scalar_t__ value; int /*<<< orphan*/  subtype; int /*<<< orphan*/  index; struct encode_ud* ud; } ;
struct encode_ud {scalar_t__ deep; scalar_t__ array_tag; int tbl_index; int array_index; int iter_func; int iter_table; int iter_key; int /*<<< orphan*/  st; int /*<<< orphan*/ * L; } ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int lua_Number ;
typedef  int lua_Integer ;
typedef  int int64_t ;

/* Variables and functions */
 scalar_t__ ENCODE_DEEPLEVEL ; 
 int SPROTO_CB_ERROR ; 
 int SPROTO_CB_NIL ; 
 int SPROTO_CB_NOARRAY ; 
#define  SPROTO_TBOOLEAN 131 
#define  SPROTO_TINTEGER 130 
#define  SPROTO_TSTRING 129 
#define  SPROTO_TSTRUCT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int FUNC17 (int /*<<< orphan*/ *,int) ; 
 int FUNC18 (int /*<<< orphan*/ *,int,int*) ; 
 char* FUNC19 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC20 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,struct encode_ud*) ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 int FUNC26 (int /*<<< orphan*/ ,scalar_t__,size_t,int (*) (struct sproto_arg const*),struct encode_ud*) ; 

__attribute__((used)) static int
FUNC27(const struct sproto_arg *args) {
	struct encode_ud *self = args->ud;
	lua_State *L = self->L;
	FUNC0(L, 12, NULL);
	if (self->deep >= ENCODE_DEEPLEVEL)
		return FUNC1(L, "The table is too deep");
	if (args->index > 0) {
		if (args->tagname != self->array_tag) {
			// a new array
			self->array_tag = args->tagname;
			FUNC4(L, self->tbl_index, args->tagname);
			if (FUNC9(L, -1)) {
				if (self->array_index) {
					FUNC15(L, self->array_index);
				}
				self->array_index = 0;
				return SPROTO_CB_NOARRAY;
			}
			if (self->array_index) {
				FUNC15(L, self->array_index);
			} else {
				self->array_index = FUNC6(L);
			}

			if (FUNC2(L, self->array_index, "__pairs")) {
				FUNC14(L, self->array_index);
				FUNC3(L,	1, 3);
				int top = FUNC6(L);
				self->iter_func = top - 2;
				self->iter_table = top - 1;
				self->iter_key = top;
			} else if (!FUNC11(L,self->array_index)) {
				return FUNC1(L, ".*%s(%d) should be a table or an userdata with metamethods (Is a %s)",
					args->tagname, args->index, FUNC22(L, FUNC21(L, -1)));
			} else {
				FUNC13(L);
				self->iter_func = 0;
				self->iter_table = 0;
				self->iter_key = FUNC6(L);
			}
		}
		if (args->mainindex >= 0) {
			if (!FUNC24(L, self)) {
				// iterate end
				FUNC13(L);
				FUNC15(L, self->iter_key);
				return SPROTO_CB_NIL;
			}
			FUNC7(L, -2);
			FUNC15(L, self->iter_key);
		} else {
			FUNC5(L, self->array_index, args->index);
		}
	} else {
		FUNC4(L, self->tbl_index, args->tagname);
	}
	if (FUNC9(L, -1)) {
		FUNC12(L,1);
		return SPROTO_CB_NIL;
	}
	switch (args->type) {
	case SPROTO_TINTEGER: {
		int64_t v;
		lua_Integer vh;
		int isnum;
		if (args->extra) {
			// It's decimal.
			lua_Number vn = FUNC20(L, -1);
			// use 64bit integer for 32bit architecture.
			v = (int64_t)(FUNC25(vn * args->extra));
		} else {
			v = FUNC18(L, -1, &isnum);
			if(!isnum) {
				return FUNC1(L, ".%s[%d] is not an integer (Is a %s)", 
					args->tagname, args->index, FUNC22(L, FUNC21(L, -1)));
			}
		}
		FUNC12(L,1);
		// notice: in lua 5.2, lua_Integer maybe 52bit
		vh = v >> 31;
		if (vh == 0 || vh == -1) {
			*(uint32_t *)args->value = (uint32_t)v;
			return 4;
		}
		else {
			*(uint64_t *)args->value = (uint64_t)v;
			return 8;
		}
	}
	case SPROTO_TBOOLEAN: {
		int v = FUNC17(L, -1);
		if (!FUNC8(L,-1)) {
			return FUNC1(L, ".%s[%d] is not a boolean (Is a %s)",
				args->tagname, args->index, FUNC22(L, FUNC21(L, -1)));
		}
		*(int *)args->value = v;
		FUNC12(L,1);
		return 4;
	}
	case SPROTO_TSTRING: {
		size_t sz = 0;
		const char * str;
		if (!FUNC10(L, -1)) {
			return FUNC1(L, ".%s[%d] is not a string (Is a %s)", 
				args->tagname, args->index, FUNC22(L, FUNC21(L, -1)));
		} else {
			str = FUNC19(L, -1, &sz);
		}
		if (sz > args->length)
			return SPROTO_CB_ERROR;
		FUNC23(args->value, str, sz);
		FUNC12(L,1);
		return sz;
	}
	case SPROTO_TSTRUCT: {
		struct encode_ud sub;
		int r;
		int top = FUNC6(L);
		sub.L = L;
		sub.st = args->subtype;
		sub.tbl_index = top;
		sub.array_tag = NULL;
		sub.array_index = 0;
		sub.deep = self->deep + 1;
		sub.iter_func = 0;
		sub.iter_table = 0;
		sub.iter_key = 0;
		r = FUNC26(args->subtype, args->value, args->length, encode, &sub);
		FUNC16(L, top-1);	// pop the value
		if (r < 0) 
			return SPROTO_CB_ERROR;
		return r;
	}
	default:
		return FUNC1(L, "Invalid field type %d", args->type);
	}
}