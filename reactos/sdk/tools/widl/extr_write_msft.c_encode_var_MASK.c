#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  var_t ;
struct TYPE_22__ {char* name; } ;
typedef  TYPE_2__ type_t ;
struct TYPE_23__ {int /*<<< orphan*/ ** typelib_segment_data; TYPE_1__* typelib_segdir; } ;
typedef  TYPE_3__ msft_typelib_t ;
struct TYPE_21__ {int length; } ;

/* Variables and functions */
 size_t MSFT_SEG_ARRAYDESC ; 
 size_t MSFT_SEG_TYPEDESC ; 
 int VT_ARRAY ; 
 int VT_BYREF ; 
 int VT_CARRAY ; 
 int VT_DISPATCH ; 
 int VT_PTR ; 
 scalar_t__ VT_SAFEARRAY ; 
 int VT_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (TYPE_3__*,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int,TYPE_2__*,int*,int*) ; 
 int FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 TYPE_2__* FUNC7 (TYPE_2__*) ; 
 int FUNC8 (TYPE_2__*) ; 
 TYPE_2__* FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 TYPE_2__* FUNC11 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC12(
	msft_typelib_t *typelib,   /* [I] The type library in which to encode the TYPEDESC. */
	type_t *type,              /* [I] The type description to encode. */
	var_t *var,                /* [I] The var to encode. */
	int *encoded_type,         /* [O] The encoded type description. */
	int *decoded_size)         /* [O] The total size of the unencoded TYPEDESCs, including nested descs. */
{
    int typeoffset;
    int *typedata;
    int target_type;
    int child_size;
    int vt;
    int scratch;

    if (!decoded_size) decoded_size = &scratch;
    *decoded_size = 0;

    FUNC0("encode_var: var %p type %p type->name %s\n",
         var, type, type->name ? type->name : "NULL");

    if (FUNC5(type) && !FUNC10(type)) {
        int num_dims, elements = 1, arrayoffset;
        type_t *atype;
        int *arraydata;

        num_dims = 0;
        for (atype = type;
             FUNC5(atype) && !FUNC10(atype);
             atype = FUNC9(atype))
            ++num_dims;

        FUNC0("array with %d dimensions\n", num_dims);
        FUNC12(typelib, atype, var, &target_type, NULL);
        arrayoffset = FUNC1(typelib, MSFT_SEG_ARRAYDESC, (2 + 2 * num_dims) * sizeof(int), 0);
        arraydata = (void *)&typelib->typelib_segment_data[MSFT_SEG_ARRAYDESC][arrayoffset];

        arraydata[0] = target_type;
        arraydata[1] = num_dims;
        arraydata[1] |= ((num_dims * 2 * sizeof(int)) << 16);

        arraydata += 2;
        for (atype = type;
             FUNC5(atype) && !FUNC10(atype);
             atype = FUNC9(atype))
        {
            arraydata[0] = FUNC8(atype);
            arraydata[1] = 0;
            arraydata += 2;
            elements *= FUNC8(atype);
        }

        typeoffset = FUNC1(typelib, MSFT_SEG_TYPEDESC, 8, 0);
        typedata = (void *)&typelib->typelib_segment_data[MSFT_SEG_TYPEDESC][typeoffset];

        typedata[0] = (0x7ffe << 16) | VT_CARRAY;
        typedata[1] = arrayoffset;

        *encoded_type = typeoffset;
        *decoded_size = 20 /*sizeof(ARRAYDESC)*/ + (num_dims - 1) * 8 /*sizeof(SAFEARRAYBOUND)*/;
        return 0;
    }

    vt = FUNC4(type);
    if (vt == VT_PTR) {
        type_t *ref = FUNC6(type) ?
            FUNC11(type) : FUNC9(type);
        int skip_ptr = FUNC12(typelib, ref, var, &target_type, &child_size);

        if(skip_ptr == 2) {
            FUNC0("encode_var: skipping ptr\n");
            *encoded_type = target_type;
            *decoded_size = child_size;
            return 0;
        }

	for (typeoffset = 0; typeoffset < typelib->typelib_segdir[MSFT_SEG_TYPEDESC].length; typeoffset += 8) {
	    typedata = (void *)&typelib->typelib_segment_data[MSFT_SEG_TYPEDESC][typeoffset];
	    if (((typedata[0] & 0xffff) == VT_PTR) && (typedata[1] == target_type)) break;
	}

	if (typeoffset == typelib->typelib_segdir[MSFT_SEG_TYPEDESC].length) {
	    int mix_field;

	    if (target_type & 0x80000000) {
		mix_field = ((target_type >> 16) & 0x3fff) | VT_BYREF;
	    } else if (FUNC4(ref) == VT_SAFEARRAY) {
		type_t *element_type = FUNC7(FUNC9(ref));
		mix_field = FUNC4(element_type) | VT_ARRAY | VT_BYREF;
	    } else {
		typedata = (void *)&typelib->typelib_segment_data[MSFT_SEG_TYPEDESC][target_type];
		mix_field = ((typedata[0] >> 16) == 0x7fff)? 0x7fff: 0x7ffe;
	    }

	    typeoffset = FUNC1(typelib, MSFT_SEG_TYPEDESC, 8, 0);
	    typedata = (void *)&typelib->typelib_segment_data[MSFT_SEG_TYPEDESC][typeoffset];

	    typedata[0] = (mix_field << 16) | VT_PTR;
	    typedata[1] = target_type;
	}

	*encoded_type = typeoffset;

	*decoded_size = 8 /*sizeof(TYPEDESC)*/ + child_size;
        return 0;
    }

    FUNC2(type);

    FUNC3(typelib, vt, type, encoded_type, decoded_size);
    /* these types already have an implicit pointer, so we don't need to
     * add another */
    if(vt == VT_DISPATCH || vt == VT_UNKNOWN) return 2;
    return 0;
}