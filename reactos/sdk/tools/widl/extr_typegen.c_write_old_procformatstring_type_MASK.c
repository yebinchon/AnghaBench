#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {unsigned short typestring_offset; TYPE_5__* type; int /*<<< orphan*/  attrs; } ;
typedef  TYPE_3__ var_t ;
struct TYPE_11__ {scalar_t__ ptr_tfsoff; } ;
struct TYPE_12__ {TYPE_1__ array; } ;
struct TYPE_14__ {unsigned short typestring_offset; TYPE_2__ details; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_IN ; 
 int /*<<< orphan*/  ATTR_OUT ; 
 unsigned char FC_BIND_PRIMITIVE ; 
 unsigned char FC_IGNORE ; 
 int TRUE ; 
 scalar_t__ TYPE_BASIC ; 
 scalar_t__ TYPE_ENUM ; 
 unsigned char FUNC0 (TYPE_5__*) ; 
 unsigned char FUNC1 (TYPE_5__*) ; 
 unsigned int FUNC2 (TYPE_3__ const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_5__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int pointer_size ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*,...) ; 
 unsigned short FUNC6 (unsigned char) ; 
 scalar_t__ FUNC7 (TYPE_5__*) ; 
 scalar_t__ FUNC8 (TYPE_5__*) ; 

__attribute__((used)) static unsigned int FUNC9(FILE *file, int indent, const var_t *var,
                                                    int is_return, int is_interpreted)
{
    unsigned int size;

    int is_in = FUNC4(var->attrs, ATTR_IN);
    int is_out = FUNC4(var->attrs, ATTR_OUT);

    if (!is_in && !is_out) is_in = TRUE;

    if (FUNC8(var->type) == TYPE_BASIC ||
        FUNC8(var->type) == TYPE_ENUM)
    {
        unsigned char fc;

        if (is_return)
            FUNC5(file, indent, "0x53,    /* FC_RETURN_PARAM_BASETYPE */\n");
        else
            FUNC5(file, indent, "0x4e,    /* FC_IN_PARAM_BASETYPE */\n");

        if (FUNC8(var->type) == TYPE_ENUM)
        {
            fc = FUNC1(var->type);
        }
        else
        {
            fc = FUNC0(var->type);

            if (fc == FC_BIND_PRIMITIVE)
                fc = FC_IGNORE;
        }

        FUNC5(file, indent, "0x%02x,    /* %s */\n",
                   fc, FUNC6(fc));
        size = 2; /* includes param type prefix */
    }
    else
    {
        unsigned short offset = var->typestring_offset;

        if (!is_interpreted && FUNC3(var->type) &&
            FUNC7(var->type) &&
            var->type->details.array.ptr_tfsoff)
            offset = var->type->typestring_offset;

        if (is_return)
            FUNC5(file, indent, "0x52,    /* FC_RETURN_PARAM */\n");
        else if (is_in && is_out)
            FUNC5(file, indent, "0x50,    /* FC_IN_OUT_PARAM */\n");
        else if (is_out)
            FUNC5(file, indent, "0x51,    /* FC_OUT_PARAM */\n");
        else
            FUNC5(file, indent, "0x4d,    /* FC_IN_PARAM */\n");

        size = FUNC2( var, NULL );
        FUNC5(file, indent, "0x%02x,\n", size / pointer_size );
        FUNC5(file, indent, "NdrFcShort(0x%x),	/* type offset = %u */\n", offset, offset);
        size = 4; /* includes param type prefix */
    }
    return size;
}