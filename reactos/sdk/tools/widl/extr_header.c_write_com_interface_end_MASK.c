#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {char* c_name; char* name; int /*<<< orphan*/  namespace; int /*<<< orphan*/  attrs; } ;
typedef  TYPE_1__ type_t ;
typedef  int /*<<< orphan*/  UUID ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_DISPINTERFACE ; 
 int /*<<< orphan*/  ATTR_UUID ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (TYPE_1__*) ; 
 char* FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  winrt_mode ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC19(FILE *header, type_t *iface)
{
  int dispinterface = FUNC3(iface->attrs, ATTR_DISPINTERFACE);
  const UUID *uuid = FUNC1(iface->attrs, ATTR_UUID);
  type_t *type;

  if (uuid)
      FUNC10(header, dispinterface ? "DIID" : "IID", iface->c_name, uuid);

  /* C++ interface */
  FUNC0(header, "#if defined(__cplusplus) && !defined(CINTERFACE)\n");
  if (!FUNC4(iface->namespace)) {
      FUNC12(header, 0, "} /* extern \"C\" */");
      FUNC17(header, iface->namespace);
  }
  if (uuid) {
      FUNC12(header, 0, "MIDL_INTERFACE(\"%s\")", FUNC6(uuid));
      FUNC2(header, 0);
  }else {
      FUNC2(header, 0);
      FUNC0(header, "interface ");
  }
  if (FUNC5(iface))
  {
    FUNC0(header, "%s : public %s\n", iface->name,
            FUNC5(iface)->name);
    FUNC12(header, 1, "{");
  }
  else
  {
    FUNC0(header, "%s\n", iface->name);
    FUNC12(header, 1, "{\n");
    FUNC12(header, 0, "BEGIN_INTERFACE\n");
  }
  /* dispinterfaces don't have real functions, so don't write C++ functions for
   * them */
  if (!dispinterface)
    FUNC9(header, iface);
  if (!FUNC5(iface))
    FUNC12(header, 0, "END_INTERFACE\n");
  FUNC12(header, -1, "};");
  if (!FUNC4(iface->namespace)) {
      FUNC16(header, iface->namespace);
      FUNC12(header, 0, "extern \"C\" {");
  }
  if (uuid)
      FUNC18(header, iface, uuid);
  FUNC0(header, "#else\n");
  /* C interface */
  FUNC12(header, 1, "typedef struct %sVtbl {", iface->c_name);
  FUNC12(header, 0, "BEGIN_INTERFACE\n");
  if (dispinterface)
    FUNC7(header, iface);
  else
    FUNC8(header, iface);
  FUNC12(header, 0, "END_INTERFACE");
  FUNC12(header, -1, "} %sVtbl;\n", iface->c_name);
  FUNC0(header, "interface %s {\n", iface->c_name);
  FUNC0(header, "    CONST_VTBL %sVtbl* lpVtbl;\n", iface->c_name);
  FUNC0(header, "};\n\n");
  FUNC0(header, "#ifdef COBJMACROS\n");
  /* dispinterfaces don't have real functions, so don't write macros for them,
   * only for the interface this interface inherits from, i.e. IDispatch */
  FUNC0(header, "#ifndef WIDL_C_INLINE_WRAPPERS\n");
  type = dispinterface ? FUNC5(iface) : iface;
  FUNC14(header, type, type, iface->c_name);
  FUNC0(header, "#else\n");
  FUNC11(header, type, type, iface->c_name);
  FUNC0(header, "#endif\n");
  FUNC0(header, "#endif\n");
  FUNC0(header, "\n");
  FUNC0(header, "#endif\n");
  FUNC0(header, "\n");
  /* dispinterfaces don't have real functions, so don't write prototypes for
   * them */
  if (!dispinterface && !winrt_mode)
  {
    FUNC15(header, iface);
    FUNC13(header, iface, FALSE);
    FUNC0(header, "\n");
  }
  FUNC0(header,"#endif  /* __%s_%sINTERFACE_DEFINED__ */\n\n", iface->c_name, dispinterface ? "DISP" : "");
}