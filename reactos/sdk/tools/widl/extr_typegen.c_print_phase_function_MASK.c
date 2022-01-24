#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ var_t ;
typedef  enum remoting_phase { ____Placeholder_remoting_phase } remoting_phase ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  PHASE_BUFFERSIZE 131 
#define  PHASE_FREE 130 
#define  PHASE_MARSHAL 129 
#define  PHASE_UNMARSHAL 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*,...) ; 

__attribute__((used)) static void FUNC3(FILE *file, int indent, const char *type,
                                 const char *local_var_prefix, enum remoting_phase phase,
                                 const var_t *var, unsigned int type_offset)
{
    const char *function;
    switch (phase)
    {
    case PHASE_BUFFERSIZE:
        function = "BufferSize";
        break;
    case PHASE_MARSHAL:
        function = "Marshall";
        break;
    case PHASE_UNMARSHAL:
        function = "Unmarshall";
        break;
    case PHASE_FREE:
        function = "Free";
        break;
    default:
        FUNC0(0);
        return;
    }

    FUNC2(file, indent, "Ndr%s%s(\n", type, function);
    indent++;
    FUNC2(file, indent, "&__frame->_StubMsg,\n");
    FUNC2(file, indent, "%s%s%s%s%s,\n",
               (phase == PHASE_UNMARSHAL) ? "(unsigned char **)" : "(unsigned char *)",
               (phase == PHASE_UNMARSHAL || FUNC1(var->type)) ? "&" : "",
               local_var_prefix,
               (phase == PHASE_UNMARSHAL && FUNC1(var->type)) ? "_p_" : "",
               var->name);
    FUNC2(file, indent, "(PFORMAT_STRING)&__MIDL_TypeFormatString.Format[%d]%s\n",
               type_offset, (phase == PHASE_UNMARSHAL) ? "," : ");");
    if (phase == PHASE_UNMARSHAL)
        FUNC2(file, indent, "0);\n");
    indent--;
}