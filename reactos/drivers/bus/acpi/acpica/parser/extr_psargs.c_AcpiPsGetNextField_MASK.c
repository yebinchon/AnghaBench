#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT8 ;
typedef  int UINT32 ;
typedef  int UINT16 ;
struct TYPE_20__ {int Integer; int /*<<< orphan*/  Name; void* Size; } ;
struct TYPE_21__ {TYPE_3__ Value; int /*<<< orphan*/ * InlineComment; int /*<<< orphan*/ * NameComment; } ;
struct TYPE_18__ {int Size; } ;
struct TYPE_19__ {int* Data; TYPE_1__ Value; } ;
struct TYPE_23__ {TYPE_4__ Common; TYPE_2__ Named; } ;
struct TYPE_22__ {int* Aml; } ;
typedef  TYPE_5__ ACPI_PARSE_STATE ;
typedef  TYPE_6__ ACPI_PARSE_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int*) ; 
 int FUNC2 (int*) ; 
 int FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*) ; 
 int /*<<< orphan*/  ACPI_NAMESEG_SIZE ; 
 int AML_BUFFER_OP ; 
#define  AML_BYTE_OP 139 
#define  AML_DWORD_OP 138 
#define  AML_FIELD_ACCESS_OP 137 
#define  AML_FIELD_CONNECTION_OP 136 
#define  AML_FIELD_EXT_ACCESS_OP 135 
#define  AML_FIELD_OFFSET_OP 134 
#define  AML_INT_ACCESSFIELD_OP 133 
 int AML_INT_BYTELIST_OP ; 
#define  AML_INT_CONNECTION_OP 132 
#define  AML_INT_EXTACCESSFIELD_OP 131 
#define  AML_INT_NAMEDFIELD_OP 130 
 int AML_INT_NAMEPATH_OP ; 
#define  AML_INT_RESERVEDFIELD_OP 129 
#define  AML_WORD_OP 128 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/ * AcpiGbl_CurrentInlineComment ; 
 TYPE_6__* FUNC6 (int,int*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 void* FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  PsGetNextField ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*) ; 

__attribute__((used)) static ACPI_PARSE_OBJECT *
FUNC13 (
    ACPI_PARSE_STATE        *ParserState)
{
    UINT8                   *Aml;
    ACPI_PARSE_OBJECT       *Field;
    ACPI_PARSE_OBJECT       *Arg = NULL;
    UINT16                  Opcode;
    UINT32                  Name;
    UINT8                   AccessType;
    UINT8                   AccessAttribute;
    UINT8                   AccessLength;
    UINT32                  PkgLength;
    UINT8                   *PkgEnd;
    UINT32                  BufferLength;


    FUNC0 (PsGetNextField);


    FUNC5 (ParserState);
    Aml = ParserState->Aml;

    /* Determine field type */

    switch (FUNC3 (ParserState->Aml))
    {
    case AML_FIELD_OFFSET_OP:

        Opcode = AML_INT_RESERVEDFIELD_OP;
        ParserState->Aml++;
        break;

    case AML_FIELD_ACCESS_OP:

        Opcode = AML_INT_ACCESSFIELD_OP;
        ParserState->Aml++;
        break;

    case AML_FIELD_CONNECTION_OP:

        Opcode = AML_INT_CONNECTION_OP;
        ParserState->Aml++;
        break;

    case AML_FIELD_EXT_ACCESS_OP:

        Opcode = AML_INT_EXTACCESSFIELD_OP;
        ParserState->Aml++;
        break;

    default:

        Opcode = AML_INT_NAMEDFIELD_OP;
        break;
    }

    /* Allocate a new field op */

    Field = FUNC6 (Opcode, Aml);
    if (!Field)
    {
        FUNC12 (NULL);
    }

    /* Decode the field type */

    FUNC5 (ParserState);
    switch (Opcode)
    {
    case AML_INT_NAMEDFIELD_OP:

        /* Get the 4-character name */

        FUNC4 (&Name, ParserState->Aml);
        FUNC11 (Field, Name);
        ParserState->Aml += ACPI_NAMESEG_SIZE;


        FUNC5 (ParserState);

#ifdef ACPI_ASL_COMPILER
        /*
         * Because the package length isn't represented as a parse tree object,
         * take comments surrounding this and add to the previously created
         * parse node.
         */
        if (Field->Common.InlineComment)
        {
            Field->Common.NameComment = Field->Common.InlineComment;
        }
        Field->Common.InlineComment  = AcpiGbl_CurrentInlineComment;
        AcpiGbl_CurrentInlineComment = NULL;
#endif

        /* Get the length which is encoded as a package length */

        Field->Common.Value.Size = FUNC10 (ParserState);
        break;


    case AML_INT_RESERVEDFIELD_OP:

        /* Get the length which is encoded as a package length */

        Field->Common.Value.Size = FUNC10 (ParserState);
        break;


    case AML_INT_ACCESSFIELD_OP:
    case AML_INT_EXTACCESSFIELD_OP:

        /*
         * Get AccessType and AccessAttrib and merge into the field Op
         * AccessType is first operand, AccessAttribute is second. stuff
         * these bytes into the node integer value for convenience.
         */

        /* Get the two bytes (Type/Attribute) */

        AccessType = FUNC3 (ParserState->Aml);
        ParserState->Aml++;
        AccessAttribute = FUNC3 (ParserState->Aml);
        ParserState->Aml++;

        Field->Common.Value.Integer = (UINT8) AccessType;
        Field->Common.Value.Integer |= (UINT16) (AccessAttribute << 8);

        /* This opcode has a third byte, AccessLength */

        if (Opcode == AML_INT_EXTACCESSFIELD_OP)
        {
            AccessLength = FUNC3 (ParserState->Aml);
            ParserState->Aml++;

            Field->Common.Value.Integer |= (UINT32) (AccessLength << 16);
        }
        break;


    case AML_INT_CONNECTION_OP:

        /*
         * Argument for Connection operator can be either a Buffer
         * (resource descriptor), or a NameString.
         */
        Aml = ParserState->Aml;
        if (FUNC3 (ParserState->Aml) == AML_BUFFER_OP)
        {
            ParserState->Aml++;

            FUNC5 (ParserState);
            PkgEnd = ParserState->Aml;
            PkgLength = FUNC10 (ParserState);
            PkgEnd += PkgLength;

            FUNC5 (ParserState);
            if (ParserState->Aml < PkgEnd)
            {
                /* Non-empty list */

                Arg = FUNC6 (AML_INT_BYTELIST_OP, Aml);
                if (!Arg)
                {
                    FUNC8 (Field);
                    FUNC12 (NULL);
                }

                /* Get the actual buffer length argument */

                Opcode = FUNC3 (ParserState->Aml);
                ParserState->Aml++;

                FUNC5 (ParserState);
                switch (Opcode)
                {
                case AML_BYTE_OP:       /* AML_BYTEDATA_ARG */

                    BufferLength = FUNC3 (ParserState->Aml);
                    ParserState->Aml += 1;
                    break;

                case AML_WORD_OP:       /* AML_WORDDATA_ARG */

                    BufferLength = FUNC1 (ParserState->Aml);
                    ParserState->Aml += 2;
                    break;

                case AML_DWORD_OP:      /* AML_DWORDATA_ARG */

                    BufferLength = FUNC2 (ParserState->Aml);
                    ParserState->Aml += 4;
                    break;

                default:

                    BufferLength = 0;
                    break;
                }

                /* Fill in bytelist data */

                FUNC5 (ParserState);
                Arg->Named.Value.Size = BufferLength;
                Arg->Named.Data = ParserState->Aml;
            }

            /* Skip to End of byte data */

            ParserState->Aml = PkgEnd;
        }
        else
        {
            Arg = FUNC6 (AML_INT_NAMEPATH_OP, Aml);
            if (!Arg)
            {
                FUNC8 (Field);
                FUNC12 (NULL);
            }

            /* Get the Namestring argument */

            Arg->Common.Value.Name = FUNC9 (ParserState);
        }

        /* Link the buffer/namestring to parent (CONNECTION_OP) */

        FUNC7 (Field, Arg);
        break;


    default:

        /* Opcode was set in previous switch */
        break;
    }

    FUNC12 (Field);
}