#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  ACPI_DESC_TYPE_OPERAND 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  UtValidInternalObject ; 

BOOLEAN
FUNC4 (
    void                    *Object)
{

    FUNC1 (UtValidInternalObject);


    /* Check for a null pointer */

    if (!Object)
    {
        FUNC0 ((ACPI_DB_EXEC, "**** Null Object Ptr\n"));
        return (FALSE);
    }

    /* Check the descriptor type field */

    switch (FUNC2 (Object))
    {
    case ACPI_DESC_TYPE_OPERAND:

        /* The object appears to be a valid ACPI_OPERAND_OBJECT */

        return (TRUE);

    default:

        FUNC0 ((ACPI_DB_EXEC,
            "%p is not an ACPI operand obj [%s]\n",
            Object, FUNC3 (Object)));
        break;
    }

    return (FALSE);
}