#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {char* name; int /*<<< orphan*/  attrs; void* written; int /*<<< orphan*/  defined; int /*<<< orphan*/  namespace; } ;
typedef  TYPE_1__ type_t ;
typedef  enum name_type { ____Placeholder_name_type } name_type ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_CONST ; 
 void* TRUE ; 
#define  TYPE_ALIAS 156 
#define  TYPE_ARRAY 155 
#define  TYPE_BASIC 154 
#define  TYPE_BASIC_BYTE 153 
#define  TYPE_BASIC_CHAR 152 
#define  TYPE_BASIC_DOUBLE 151 
#define  TYPE_BASIC_ERROR_STATUS_T 150 
#define  TYPE_BASIC_FLOAT 149 
#define  TYPE_BASIC_HANDLE 148 
#define  TYPE_BASIC_HYPER 147 
#define  TYPE_BASIC_INT 146 
#define  TYPE_BASIC_INT16 145 
#define  TYPE_BASIC_INT32 144 
#define  TYPE_BASIC_INT3264 143 
#define  TYPE_BASIC_INT64 142 
#define  TYPE_BASIC_INT8 141 
#define  TYPE_BASIC_LONG 140 
#define  TYPE_BASIC_WCHAR 139 
#define  TYPE_BITFIELD 138 
#define  TYPE_COCLASS 137 
#define  TYPE_ENCAPSULATED_UNION 136 
#define  TYPE_ENUM 135 
#define  TYPE_FUNCTION 134 
#define  TYPE_INTERFACE 133 
#define  TYPE_MODULE 132 
#define  TYPE_POINTER 131 
#define  TYPE_STRUCT 130 
#define  TYPE_UNION 129 
#define  TYPE_VOID 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  indentation ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*) ; 
 TYPE_1__* FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 char* FUNC13 (TYPE_1__*,int) ; 
 int const FUNC14 (TYPE_1__*) ; 
 int FUNC15 (TYPE_1__*) ; 
 scalar_t__ FUNC16 (TYPE_1__*) ; 
 TYPE_1__* FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void FUNC23(FILE *h, type_t *t, enum name_type name_type, int declonly)
{
  const char *name;

  if (!h) return;

  name = FUNC13(t, name_type);

  if (FUNC3(t->attrs, ATTR_CONST) &&
      (FUNC16(t) || !FUNC5(t)))
    FUNC1(h, "const ");

  if (FUNC16(t)) FUNC1(h, "%s", t->name);
  else {
    switch (FUNC15(t)) {
      case TYPE_ENUM:
        if (!declonly && t->defined && !t->written) {
          if (name) FUNC1(h, "enum %s {\n", name);
          else FUNC1(h, "enum {\n");
          t->written = TRUE;
          indentation++;
          FUNC20(h, FUNC12(t), FUNC4(t->namespace) ? NULL : t->name);
          FUNC2(h, -1);
          FUNC1(h, "}");
        }
        else FUNC1(h, "enum %s", name ? name : "");
        break;
      case TYPE_STRUCT:
      case TYPE_ENCAPSULATED_UNION:
        if (!declonly && t->defined && !t->written) {
          if (name) FUNC1(h, "struct %s {\n", name);
          else FUNC1(h, "struct {\n");
          t->written = TRUE;
          indentation++;
          if (FUNC14(t) != TYPE_STRUCT)
            FUNC21(h, FUNC11(t));
          else
            FUNC21(h, FUNC18(t));
          FUNC2(h, -1);
          FUNC1(h, "}");
        }
        else FUNC1(h, "struct %s", name ? name : "");
        break;
      case TYPE_UNION:
        if (!declonly && t->defined && !t->written) {
          if (t->name) FUNC1(h, "union %s {\n", t->name);
          else FUNC1(h, "union {\n");
          t->written = TRUE;
          indentation++;
          FUNC21(h, FUNC19(t));
          FUNC2(h, -1);
          FUNC1(h, "}");
        }
        else FUNC1(h, "union %s", t->name ? t->name : "");
        break;
      case TYPE_POINTER:
      {
        FUNC23(h, FUNC17(t), name_type, declonly);
        FUNC22(h, FUNC17(t));
        if (FUNC3(t->attrs, ATTR_CONST)) FUNC1(h, "const ");
        break;
      }
      case TYPE_ARRAY:
        if (t->name && FUNC7(t))
          FUNC1(h, "%s", t->name);
        else
        {
          FUNC23(h, FUNC6(t), name_type, declonly);
          if (FUNC7(t))
            FUNC22(h, FUNC6(t));
        }
        break;
      case TYPE_BASIC:
        if (FUNC9(t) != TYPE_BASIC_INT32 &&
            FUNC9(t) != TYPE_BASIC_INT64 &&
            FUNC9(t) != TYPE_BASIC_LONG &&
            FUNC9(t) != TYPE_BASIC_HYPER)
        {
          if (FUNC8(t) < 0) FUNC1(h, "signed ");
          else if (FUNC8(t) > 0) FUNC1(h, "unsigned ");
        }
        switch (FUNC9(t))
        {
        case TYPE_BASIC_INT8: FUNC1(h, "small"); break;
        case TYPE_BASIC_INT16: FUNC1(h, "short"); break;
        case TYPE_BASIC_INT: FUNC1(h, "int"); break;
        case TYPE_BASIC_INT3264: FUNC1(h, "__int3264"); break;
        case TYPE_BASIC_BYTE: FUNC1(h, "byte"); break;
        case TYPE_BASIC_CHAR: FUNC1(h, "char"); break;
        case TYPE_BASIC_WCHAR: FUNC1(h, "wchar_t"); break;
        case TYPE_BASIC_FLOAT: FUNC1(h, "float"); break;
        case TYPE_BASIC_DOUBLE: FUNC1(h, "double"); break;
        case TYPE_BASIC_ERROR_STATUS_T: FUNC1(h, "error_status_t"); break;
        case TYPE_BASIC_HANDLE: FUNC1(h, "handle_t"); break;
        case TYPE_BASIC_INT32:
          if (FUNC8(t) > 0)
            FUNC1(h, "UINT32");
          else
            FUNC1(h, "INT32");
          break;
        case TYPE_BASIC_LONG:
          if (FUNC8(t) > 0)
            FUNC1(h, "ULONG");
          else
            FUNC1(h, "LONG");
          break;
        case TYPE_BASIC_INT64:
          if (FUNC8(t) > 0)
            FUNC1(h, "UINT64");
          else
            FUNC1(h, "INT64");
          break;
        case TYPE_BASIC_HYPER:
          if (FUNC8(t) > 0)
            FUNC1(h, "MIDL_uhyper");
          else
            FUNC1(h, "hyper");
          break;
        }
        break;
      case TYPE_INTERFACE:
      case TYPE_MODULE:
      case TYPE_COCLASS:
        FUNC1(h, "%s", t->name);
        break;
      case TYPE_VOID:
        FUNC1(h, "void");
        break;
      case TYPE_BITFIELD:
        FUNC23(h, FUNC10(t), name_type, declonly);
        break;
      case TYPE_ALIAS:
      case TYPE_FUNCTION:
        /* handled elsewhere */
        FUNC0(0);
        break;
    }
  }
}