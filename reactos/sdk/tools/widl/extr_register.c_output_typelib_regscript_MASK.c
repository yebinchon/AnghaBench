#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char const* name; int /*<<< orphan*/  stmts; int /*<<< orphan*/  attrs; } ;
typedef  TYPE_1__ typelib_t ;
struct TYPE_7__ {int cval; } ;
typedef  TYPE_2__ expr_t ;
typedef  int /*<<< orphan*/  UUID ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_CONTROL ; 
 int /*<<< orphan*/  ATTR_HELPSTRING ; 
 int /*<<< orphan*/  ATTR_HIDDEN ; 
 int /*<<< orphan*/  ATTR_ID ; 
 int /*<<< orphan*/  ATTR_LIBLCID ; 
 int /*<<< orphan*/  ATTR_RESTRICTED ; 
 int /*<<< orphan*/  ATTR_UUID ; 
 int /*<<< orphan*/  ATTR_VERSION ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  indent ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int pointer_size ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,...) ; 
 scalar_t__ FUNC9 (char*) ; 
 char* typelib_name ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__ const*) ; 
 char* FUNC13 (scalar_t__) ; 

void FUNC14( const typelib_t *typelib )
{
    const UUID *typelib_uuid = FUNC4( typelib->attrs, ATTR_UUID );
    const char *descr = FUNC4( typelib->attrs, ATTR_HELPSTRING );
    const expr_t *lcid_expr = FUNC4( typelib->attrs, ATTR_LIBLCID );
    unsigned int version = FUNC5( typelib->attrs, ATTR_VERSION );
    unsigned int flags = 0;
    char id_part[12] = "";
#ifndef __REACTOS__
    char *resname = typelib_name;
#endif
    expr_t *expr;

    if (FUNC6( typelib->attrs, ATTR_RESTRICTED )) flags |= 1; /* LIBFLAG_FRESTRICTED */
    if (FUNC6( typelib->attrs, ATTR_CONTROL )) flags |= 2; /* LIBFLAG_FCONTROL */
    if (FUNC6( typelib->attrs, ATTR_HIDDEN )) flags |= 4; /* LIBFLAG_FHIDDEN */

    FUNC7( indent, "HKCR\n" );
    FUNC7( indent++, "{\n" );

    FUNC7( indent, "NoRemove Typelib\n" );
    FUNC7( indent++, "{\n" );
    FUNC7( indent, "NoRemove '%s'\n", FUNC3( typelib_uuid ));
    FUNC7( indent++, "{\n" );
    FUNC7( indent, "'%u.%u' = s '%s'\n",
             FUNC0(version), FUNC1(version), descr ? descr : typelib->name );
    FUNC7( indent++, "{\n" );
    expr = FUNC4( typelib->attrs, ATTR_ID );
#ifdef __REACTOS__
    if (expr)
        sprintf(id_part, "\\%d", expr->cval);
#else
    if (expr)
    {
        FUNC8(id_part, "\\%d", expr->cval);
        resname = FUNC13( FUNC9(typelib_name) + 20 );
        FUNC8(resname, "%s\\%d", typelib_name, expr->cval);
    }
#endif
    FUNC7( indent, "'%x' { %s = s '%%MODULE%%%s' }\n",
             lcid_expr ? lcid_expr->cval : 0, pointer_size == 8 ? "win64" : "win32", id_part );
    FUNC7( indent, "FLAGS = s '%u'\n", flags );
    FUNC7( --indent, "}\n" );
    FUNC7( --indent, "}\n" );
    FUNC7( --indent, "}\n" );

    FUNC7( indent, "NoRemove Interface\n" );
    FUNC7( indent++, "{\n" );
    FUNC12( typelib );
    FUNC7( --indent, "}\n" );

    FUNC7( indent, "NoRemove CLSID\n" );
    FUNC7( indent++, "{\n" );
    FUNC10( typelib->stmts, typelib );
    FUNC7( --indent, "}\n" );

    FUNC11( typelib->stmts );
    FUNC7( --indent, "}\n" );
#ifdef __REACTOS__
    add_output_to_resources( "WINE_REGISTRY", typelib_name );
#else
    FUNC2( "WINE_REGISTRY", resname );
#endif
}