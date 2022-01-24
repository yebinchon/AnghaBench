#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  boolean; int /*<<< orphan*/  real; int /*<<< orphan*/  unsig; int /*<<< orphan*/  integer; } ;
struct TYPE_16__ {int type; int is_reference; int /*<<< orphan*/  reference; int /*<<< orphan*/  string; TYPE_1__ value; } ;
typedef  TYPE_2__ JsonVariant ;

/* Variables and functions */
 int /*<<< orphan*/  INLINE_STRING_MAX ; 
#define  JSON_VARIANT_ARRAY 135 
#define  JSON_VARIANT_BOOLEAN 134 
#define  JSON_VARIANT_INTEGER 133 
#define  JSON_VARIANT_NULL 132 
#define  JSON_VARIANT_OBJECT 131 
#define  JSON_VARIANT_REAL 130 
#define  JSON_VARIANT_STRING 129 
#define  JSON_VARIANT_UNSIGNED 128 
 int /*<<< orphan*/  _fallthrough_ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_2__* FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 char* FUNC9 (TYPE_2__*) ; 
 int FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC13 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(JsonVariant *a, JsonVariant *b) {
        FUNC0(a);

        b = FUNC5(b);
        if (!b) {
                a->type = JSON_VARIANT_NULL;
                return;
        }

        a->type = FUNC10(b);
        switch (a->type) {

        case JSON_VARIANT_INTEGER:
                a->value.integer = FUNC6(b);
                break;

        case JSON_VARIANT_UNSIGNED:
                a->value.unsig = FUNC11(b);
                break;

        case JSON_VARIANT_REAL:
                a->value.real = FUNC7(b);
                break;

        case JSON_VARIANT_BOOLEAN:
                a->value.boolean = FUNC3(b);
                break;

        case JSON_VARIANT_STRING: {
                const char *s;

                FUNC2(s = FUNC9(b));

                /* Short strings we can store inline */
                if (FUNC13(s, INLINE_STRING_MAX+1) <= INLINE_STRING_MAX) {
                        FUNC12(a->string, s);
                        break;
                }

                /* For longer strings, use a reference… */
                _fallthrough_;
        }

        case JSON_VARIANT_ARRAY:
        case JSON_VARIANT_OBJECT:
                a->is_reference = true;
                a->reference = FUNC8(FUNC4(b));
                break;

        case JSON_VARIANT_NULL:
                break;

        default:
                FUNC1("Unexpected variant type");
        }
}