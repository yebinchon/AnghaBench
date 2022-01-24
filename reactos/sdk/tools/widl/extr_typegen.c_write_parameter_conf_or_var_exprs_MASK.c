#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  attrs; int /*<<< orphan*/ * type; } ;
typedef  TYPE_1__ var_t ;
typedef  int /*<<< orphan*/  type_t ;
struct TYPE_9__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ expr_t ;
typedef  enum remoting_phase { ____Placeholder_remoting_phase } remoting_phase ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_IIDIS ; 
 int /*<<< orphan*/  ATTR_SWITCHIS ; 
 int /*<<< orphan*/  EXPR_VOID ; 
 int TDT_IGNORE_RANGES ; 
 int TDT_IGNORE_STRINGS ; 
#define  TGT_ARRAY 140 
#define  TGT_BASIC 139 
#define  TGT_CTXT_HANDLE 138 
#define  TGT_CTXT_HANDLE_POINTER 137 
#define  TGT_ENUM 136 
#define  TGT_IFACE_POINTER 135 
#define  TGT_INVALID 134 
#define  TGT_POINTER 133 
#define  TGT_RANGE 132 
#define  TGT_STRING 131 
#define  TGT_STRUCT 130 
#define  TGT_UNION 129 
#define  TGT_USER_TYPE 128 
 int /*<<< orphan*/  TYPE_UNION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/  const*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/  const*) ; 
 int FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_2__*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 

void FUNC12(FILE *file, int indent, const char *local_var_prefix,
                                       enum remoting_phase phase, const var_t *var, int valid_variance)
{
    const type_t *type = var->type;
    /* get fundamental type for the argument */
    for (;;)
    {
        switch (FUNC10(type, var->attrs, TDT_IGNORE_STRINGS|TDT_IGNORE_RANGES))
        {
        case TGT_ARRAY:
            if (FUNC2(phase))
            {
                if (FUNC6(type) &&
                    FUNC4(type)->type != EXPR_VOID)
                {
                    FUNC3(file, indent, "__frame->_StubMsg.MaxCount = (ULONG_PTR)");
                    FUNC11(file, FUNC4(type), 1, 1, NULL, NULL, local_var_prefix);
                    FUNC0(file, ";\n\n");
                }
                if (FUNC7(type))
                {
                    FUNC3(file, indent, "__frame->_StubMsg.Offset = 0;\n"); /* FIXME */
                    if (valid_variance)
                    {
                        FUNC3(file, indent, "__frame->_StubMsg.ActualCount = (ULONG_PTR)");
                        FUNC11(file, FUNC5(type), 1, 1, NULL, NULL, local_var_prefix);
                        FUNC0(file, ";\n\n");
                    }
                    else
                        FUNC3(file, indent, "__frame->_StubMsg.ActualCount = __frame->_StubMsg.MaxCount;\n\n");
                }
            }
            break;
        case TGT_UNION:
            if (FUNC8(type) == TYPE_UNION &&
                FUNC2(phase))
            {
                FUNC3(file, indent, "__frame->_StubMsg.MaxCount = (ULONG_PTR)");
                FUNC11(file, FUNC1(var->attrs, ATTR_SWITCHIS), 1, 1, NULL, NULL, local_var_prefix);
                FUNC0(file, ";\n\n");
            }
            break;
        case TGT_IFACE_POINTER:
        {
            expr_t *iid;

            if (FUNC2(phase) && (iid = FUNC1( var->attrs, ATTR_IIDIS )))
            {
                FUNC3( file, indent, "__frame->_StubMsg.MaxCount = (ULONG_PTR) " );
                FUNC11( file, iid, 1, 1, NULL, NULL, local_var_prefix );
                FUNC0( file, ";\n\n" );
            }
            break;
        }
        case TGT_POINTER:
            type = FUNC9(type);
            continue;
        case TGT_INVALID:
        case TGT_USER_TYPE:
        case TGT_CTXT_HANDLE:
        case TGT_CTXT_HANDLE_POINTER:
        case TGT_STRING:
        case TGT_BASIC:
        case TGT_ENUM:
        case TGT_STRUCT:
        case TGT_RANGE:
            break;
        }
        break;
    }
}