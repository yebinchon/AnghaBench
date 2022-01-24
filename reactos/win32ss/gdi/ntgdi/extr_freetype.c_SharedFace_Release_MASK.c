#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* family_name; } ;
struct TYPE_6__ {scalar_t__ RefCount; int /*<<< orphan*/  UserLanguage; int /*<<< orphan*/  EnglishUS; int /*<<< orphan*/  Memory; TYPE_3__* Face; } ;
typedef  TYPE_1__* PSHARED_FACE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG_FONT ; 

__attribute__((used)) static void
FUNC9(PSHARED_FACE Ptr)
{
    FUNC4();
    FUNC0(Ptr->RefCount > 0);

    if (Ptr->RefCount <= 0)
        return;

    --Ptr->RefCount;
    if (Ptr->RefCount == 0)
    {
        FUNC1("Releasing SharedFace for %s\n", Ptr->Face->family_name ? Ptr->Face->family_name : "<NULL>");
        FUNC6(Ptr->Face);
        FUNC3(Ptr->Face);
        FUNC8(Ptr->Memory);
        FUNC7(&Ptr->EnglishUS);
        FUNC7(&Ptr->UserLanguage);
        FUNC2(Ptr, TAG_FONT);
    }
    FUNC5();
}