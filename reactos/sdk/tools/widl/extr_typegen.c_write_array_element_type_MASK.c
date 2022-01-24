#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  typestring_offset; } ;
typedef  TYPE_1__ type_t ;
typedef  int /*<<< orphan*/  attr_list_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ TYPE_BASIC ; 
 int /*<<< orphan*/  TYPE_CONTEXT_CONTAINER ; 
 scalar_t__ TYPE_ENUM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (TYPE_1__ const*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__ const*,int,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int*) ; 

__attribute__((used)) static void FUNC11(FILE *file, const attr_list_t *attrs, const type_t *type,
                                     int cont_is_complex, unsigned int *tfsoff)
{
    type_t *elem = FUNC4(type);

    if (!FUNC0(elem) && FUNC1(elem))
    {
        type_t *ref = FUNC6(elem);

        if (FUNC3(ref))
        {
            FUNC8(file, NULL, elem, TYPE_CONTEXT_CONTAINER,
                                    ref->typestring_offset, tfsoff);
            return;
        }
        if (cont_is_complex && FUNC2(attrs, elem))
        {
            FUNC10(file, NULL, elem, TYPE_CONTEXT_CONTAINER, NULL, tfsoff);
            return;
        }
        if (!FUNC2(NULL, elem) &&
            (FUNC5(ref) == TYPE_BASIC || FUNC5(ref) == TYPE_ENUM))
        {
            *tfsoff += FUNC9(file, NULL, elem, TYPE_CONTEXT_CONTAINER);
            return;
        }
    }
    FUNC7(file, type, cont_is_complex, NULL, elem, NULL, tfsoff);
}