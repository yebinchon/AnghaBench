
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* CurrAttr; } ;
struct TYPE_7__ {scalar_t__ Type; } ;
typedef int * PNTFS_ATTR_RECORD ;
typedef TYPE_2__* PFIND_ATTR_CONTXT ;
typedef int NTSTATUS ;


 scalar_t__ AttributeAttributeList ;
 int DPRINT (char*,TYPE_2__*,int **) ;
 int * InternalGetNextAttribute (TYPE_2__*) ;
 int InternalReadNonResidentAttributes (TYPE_2__*) ;
 int NT_SUCCESS (int ) ;
 int STATUS_END_OF_FILE ;
 int STATUS_SUCCESS ;

NTSTATUS
FindNextAttribute(PFIND_ATTR_CONTXT Context,
                  PNTFS_ATTR_RECORD * Attribute)
{
    NTSTATUS Status;

    DPRINT("FindNextAttribute(%p, %p)\n", Context, Attribute);

    *Attribute = InternalGetNextAttribute(Context);
    if (*Attribute == ((void*)0))
    {
        return STATUS_END_OF_FILE;
    }

    if (Context->CurrAttr->Type != AttributeAttributeList)
    {
        return STATUS_SUCCESS;
    }

    Status = InternalReadNonResidentAttributes(Context);
    if (!NT_SUCCESS(Status))
    {
        return Status;
    }

    *Attribute = InternalGetNextAttribute(Context);
    if (*Attribute == ((void*)0))
    {
        return STATUS_END_OF_FILE;
    }

    return STATUS_SUCCESS;
}
