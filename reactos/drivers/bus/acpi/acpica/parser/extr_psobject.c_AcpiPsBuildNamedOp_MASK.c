#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT8 ;
struct TYPE_21__ {scalar_t__ Length; int /*<<< orphan*/ * Data; int /*<<< orphan*/  Aml; } ;
struct TYPE_19__ {TYPE_5__* Arg; } ;
struct TYPE_20__ {scalar_t__ AmlOpcode; int /*<<< orphan*/ * EndBlkComment; int /*<<< orphan*/ * CommentList; int /*<<< orphan*/ * NameComment; int /*<<< orphan*/ * CloseBraceComment; int /*<<< orphan*/ * EndNodeComment; int /*<<< orphan*/ * InlineComment; int /*<<< orphan*/  Aml; int /*<<< orphan*/  CvParentFilename; int /*<<< orphan*/  CvFilename; TYPE_1__ Value; scalar_t__ ArgListLength; } ;
struct TYPE_23__ {TYPE_3__ Named; TYPE_2__ Common; } ;
struct TYPE_22__ {scalar_t__ Opcode; scalar_t__ (* DescendingCallback ) (TYPE_4__*,TYPE_5__**) ;int /*<<< orphan*/ * Op; int /*<<< orphan*/  ArgTypes; int /*<<< orphan*/  ParserState; } ;
typedef  TYPE_4__ ACPI_WALK_STATE ;
typedef  scalar_t__ ACPI_STATUS ;
typedef  TYPE_5__ ACPI_PARSE_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 scalar_t__ AE_AML_NO_OPERAND ; 
 scalar_t__ AE_CTRL_PARSE_CONTINUE ; 
 scalar_t__ AE_CTRL_PARSE_PENDING ; 
 scalar_t__ AE_CTRL_PENDING ; 
 scalar_t__ AE_CTRL_TERMINATE ; 
 int /*<<< orphan*/  AE_INFO ; 
 scalar_t__ AE_OK ; 
 scalar_t__ AML_DATA_REGION_OP ; 
 scalar_t__ AML_REGION_OP ; 
 scalar_t__ ARGP_NAME ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/ * AcpiGbl_CurrentInlineComment ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,TYPE_5__*) ; 
 scalar_t__ FUNC5 (TYPE_4__*,int /*<<< orphan*/ *,scalar_t__,TYPE_5__**) ; 
 scalar_t__ FUNC6 (TYPE_4__*,TYPE_5__*,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PsBuildNamedOp ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (TYPE_4__*,TYPE_5__**) ; 

ACPI_STATUS
FUNC11 (
    ACPI_WALK_STATE         *WalkState,
    UINT8                   *AmlOpStart,
    ACPI_PARSE_OBJECT       *UnnamedOp,
    ACPI_PARSE_OBJECT       **Op)
{
    ACPI_STATUS             Status = AE_OK;
    ACPI_PARSE_OBJECT       *Arg = NULL;


    FUNC2 (PsBuildNamedOp, WalkState);


    UnnamedOp->Common.Value.Arg = NULL;
    UnnamedOp->Common.ArgListLength = 0;
    UnnamedOp->Common.AmlOpcode = WalkState->Opcode;

    /*
     * Get and append arguments until we find the node that contains
     * the name (the type ARGP_NAME).
     */
    while (FUNC7 (WalkState->ArgTypes) &&
          (FUNC7 (WalkState->ArgTypes) != ARGP_NAME))
    {
        FUNC3 (WalkState);
        Status = FUNC5 (WalkState, &(WalkState->ParserState),
            FUNC7 (WalkState->ArgTypes), &Arg);
        if (FUNC1 (Status))
        {
            FUNC9 (Status);
        }

        FUNC4 (UnnamedOp, Arg);
        FUNC8 (WalkState->ArgTypes);
    }

    /* are there any inline comments associated with the NameSeg?? If so, save this. */

    FUNC3 (WalkState);

#ifdef ACPI_ASL_COMPILER
    if (AcpiGbl_CurrentInlineComment != NULL)
    {
        UnnamedOp->Common.NameComment = AcpiGbl_CurrentInlineComment;
        AcpiGbl_CurrentInlineComment = NULL;
    }
#endif

    /*
     * Make sure that we found a NAME and didn't run out of arguments
     */
    if (!FUNC7 (WalkState->ArgTypes))
    {
        FUNC9 (AE_AML_NO_OPERAND);
    }

    /* We know that this arg is a name, move to next arg */

    FUNC8 (WalkState->ArgTypes);

    /*
     * Find the object. This will either insert the object into
     * the namespace or simply look it up
     */
    WalkState->Op = NULL;

    Status = WalkState->DescendingCallback (WalkState, Op);
    if (FUNC1 (Status))
    {
        if (Status != AE_CTRL_TERMINATE)
        {
            FUNC0 ((AE_INFO, Status, "During name lookup/catalog"));
        }
        FUNC9 (Status);
    }

    if (!*Op)
    {
        FUNC9 (AE_CTRL_PARSE_CONTINUE);
    }

    Status = FUNC6 (WalkState, *Op, Status);
    if (FUNC1 (Status))
    {
        if (Status == AE_CTRL_PENDING)
        {
            Status = AE_CTRL_PARSE_PENDING;
        }
        FUNC9 (Status);
    }

    FUNC4 (*Op, UnnamedOp->Common.Value.Arg);

#ifdef ACPI_ASL_COMPILER

    /* save any comments that might be associated with UnnamedOp. */

    (*Op)->Common.InlineComment     = UnnamedOp->Common.InlineComment;
    (*Op)->Common.EndNodeComment    = UnnamedOp->Common.EndNodeComment;
    (*Op)->Common.CloseBraceComment = UnnamedOp->Common.CloseBraceComment;
    (*Op)->Common.NameComment       = UnnamedOp->Common.NameComment;
    (*Op)->Common.CommentList       = UnnamedOp->Common.CommentList;
    (*Op)->Common.EndBlkComment     = UnnamedOp->Common.EndBlkComment;
    (*Op)->Common.CvFilename        = UnnamedOp->Common.CvFilename;
    (*Op)->Common.CvParentFilename  = UnnamedOp->Common.CvParentFilename;
    (*Op)->Named.Aml                = UnnamedOp->Common.Aml;

    UnnamedOp->Common.InlineComment     = NULL;
    UnnamedOp->Common.EndNodeComment    = NULL;
    UnnamedOp->Common.CloseBraceComment = NULL;
    UnnamedOp->Common.NameComment       = NULL;
    UnnamedOp->Common.CommentList       = NULL;
    UnnamedOp->Common.EndBlkComment     = NULL;
#endif

    if ((*Op)->Common.AmlOpcode == AML_REGION_OP ||
        (*Op)->Common.AmlOpcode == AML_DATA_REGION_OP)
    {
        /*
         * Defer final parsing of an OperationRegion body, because we don't
         * have enough info in the first pass to parse it correctly (i.e.,
         * there may be method calls within the TermArg elements of the body.)
         *
         * However, we must continue parsing because the opregion is not a
         * standalone package -- we don't know where the end is at this point.
         *
         * (Length is unknown until parse of the body complete)
         */
        (*Op)->Named.Data = AmlOpStart;
        (*Op)->Named.Length = 0;
    }

    FUNC9 (AE_OK);
}