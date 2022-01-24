#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char* name; } ;
typedef  TYPE_1__ type_t ;
typedef  int /*<<< orphan*/  msft_typelib_t ;

/* Variables and functions */
#define  TYPE_ARRAY 135 
#define  TYPE_BASIC 134 
#define  TYPE_COCLASS 133 
#define  TYPE_ENUM 132 
#define  TYPE_INTERFACE 131 
#define  TYPE_POINTER 130 
#define  TYPE_STRUCT 129 
#define  TYPE_UNION 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*) ; 
 int FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(msft_typelib_t *typelib, type_t *type)
{
    switch (FUNC6(type)) {
    case TYPE_INTERFACE:
        FUNC2(typelib, type);
        break;
    case TYPE_STRUCT:
        FUNC3(typelib, type);
        break;
    case TYPE_ENUM:
        FUNC1(typelib, type);
        break;
    case TYPE_UNION:
        FUNC4(typelib, type);
        break;
    case TYPE_COCLASS:
        FUNC0(typelib, type);
        break;
    case TYPE_BASIC:
    case TYPE_POINTER:
    case TYPE_ARRAY:
        break;
    default:
        FUNC5("add_entry: unhandled type 0x%x for %s\n",
              FUNC6(type), type->name);
        break;
    }
}