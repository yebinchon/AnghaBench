#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/ * Error_prototype; void* URIError_prototype; void* TypeError_prototype; void* SyntaxError_prototype; void* ReferenceError_prototype; void* RangeError_prototype; void* EvalError_prototype; int /*<<< orphan*/ * Object_prototype; void* Date_prototype; void* RegExp_prototype; void* String_prototype; void* Number_prototype; void* Boolean_prototype; void* Function_prototype; void* Array_prototype; } ;
typedef  TYPE_1__ js_State ;

/* Variables and functions */
 int /*<<< orphan*/  INFINITY ; 
 int /*<<< orphan*/  JS_CARRAY ; 
 int /*<<< orphan*/  JS_CBOOLEAN ; 
 int /*<<< orphan*/  JS_CCFUNCTION ; 
 int /*<<< orphan*/  JS_CDATE ; 
 int /*<<< orphan*/  JS_CERROR ; 
 int /*<<< orphan*/  JS_CNUMBER ; 
 int /*<<< orphan*/  JS_COBJECT ; 
 int /*<<< orphan*/  JS_CSTRING ; 
 int JS_DONTCONF ; 
 int JS_DONTENUM ; 
 int JS_READONLY ; 
 int /*<<< orphan*/  NAN ; 
 int /*<<< orphan*/  jsB_decodeURI ; 
 int /*<<< orphan*/  jsB_decodeURIComponent ; 
 int /*<<< orphan*/  jsB_encodeURI ; 
 int /*<<< orphan*/  jsB_encodeURIComponent ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  jsB_isFinite ; 
 int /*<<< orphan*/  jsB_isNaN ; 
 int /*<<< orphan*/  jsB_parseFloat ; 
 int /*<<< orphan*/  jsB_parseInt ; 
 void* FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 

void FUNC16(js_State *J)
{
	/* Create the prototype objects here, before the constructors */
	J->Object_prototype = FUNC12(J, JS_COBJECT, NULL);
	J->Array_prototype = FUNC12(J, JS_CARRAY, J->Object_prototype);
	J->Function_prototype = FUNC12(J, JS_CCFUNCTION, J->Object_prototype);
	J->Boolean_prototype = FUNC12(J, JS_CBOOLEAN, J->Object_prototype);
	J->Number_prototype = FUNC12(J, JS_CNUMBER, J->Object_prototype);
	J->String_prototype = FUNC12(J, JS_CSTRING, J->Object_prototype);
	J->RegExp_prototype = FUNC12(J, JS_COBJECT, J->Object_prototype);
	J->Date_prototype = FUNC12(J, JS_CDATE, J->Object_prototype);

	/* All the native error types */
	J->Error_prototype = FUNC12(J, JS_CERROR, J->Object_prototype);
	J->EvalError_prototype = FUNC12(J, JS_CERROR, J->Error_prototype);
	J->RangeError_prototype = FUNC12(J, JS_CERROR, J->Error_prototype);
	J->ReferenceError_prototype = FUNC12(J, JS_CERROR, J->Error_prototype);
	J->SyntaxError_prototype = FUNC12(J, JS_CERROR, J->Error_prototype);
	J->TypeError_prototype = FUNC12(J, JS_CERROR, J->Error_prototype);
	J->URIError_prototype = FUNC12(J, JS_CERROR, J->Error_prototype);

	/* Create the constructors and fill out the prototype objects */
	FUNC9(J);
	FUNC1(J);
	FUNC5(J);
	FUNC2(J);
	FUNC8(J);
	FUNC11(J);
	FUNC10(J);
	FUNC3(J);
	FUNC4(J);
	FUNC7(J);
	FUNC6(J);

	/* Initialize the global object */
	FUNC14(J, NAN);
	FUNC13(J, "NaN", JS_READONLY | JS_DONTENUM | JS_DONTCONF);

	FUNC14(J, INFINITY);
	FUNC13(J, "Infinity", JS_READONLY | JS_DONTENUM | JS_DONTCONF);

	FUNC15(J);
	FUNC13(J, "undefined", JS_READONLY | JS_DONTENUM | JS_DONTCONF);

	FUNC0(J, "parseInt", jsB_parseInt, 1);
	FUNC0(J, "parseFloat", jsB_parseFloat, 1);
	FUNC0(J, "isNaN", jsB_isNaN, 1);
	FUNC0(J, "isFinite", jsB_isFinite, 1);

	FUNC0(J, "decodeURI", jsB_decodeURI, 1);
	FUNC0(J, "decodeURIComponent", jsB_decodeURIComponent, 1);
	FUNC0(J, "encodeURI", jsB_encodeURI, 1);
	FUNC0(J, "encodeURIComponent", jsB_encodeURIComponent, 1);
}