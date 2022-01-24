#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  relationship ;
struct TYPE_23__ {int ActiveGroupCount; TYPE_7__* GroupInfo; int /*<<< orphan*/  MaximumGroupCount; } ;
struct TYPE_20__ {int /*<<< orphan*/  Group; int /*<<< orphan*/  Mask; } ;
struct TYPE_21__ {TYPE_5__ GroupMask; int /*<<< orphan*/  Type; int /*<<< orphan*/  CacheSize; int /*<<< orphan*/  LineSize; int /*<<< orphan*/  Associativity; int /*<<< orphan*/  Level; } ;
struct TYPE_18__ {int /*<<< orphan*/  Group; int /*<<< orphan*/  Mask; } ;
struct TYPE_19__ {TYPE_3__ GroupMask; int /*<<< orphan*/  NodeNumber; } ;
struct TYPE_17__ {int GroupCount; TYPE_1__* GroupMask; int /*<<< orphan*/  EfficiencyClass; int /*<<< orphan*/  Flags; } ;
struct TYPE_24__ {int Relationship; scalar_t__ Size; TYPE_8__ Group; TYPE_6__ Cache; TYPE_4__ NumaNode; TYPE_2__ Processor; } ;
struct TYPE_22__ {int /*<<< orphan*/  ActiveProcessorMask; int /*<<< orphan*/  ActiveProcessorCount; int /*<<< orphan*/  MaximumProcessorCount; } ;
struct TYPE_16__ {int /*<<< orphan*/  Group; int /*<<< orphan*/  Mask; } ;
typedef  TYPE_9__ SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX ;
typedef  scalar_t__ NTSTATUS ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_INSUFFICIENT_BUFFER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_9__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_9__*) ; 
 scalar_t__ RelationAll ; 
#define  RelationCache 132 
#define  RelationGroup 131 
#define  RelationNumaNode 130 
#define  RelationProcessorCore 129 
#define  RelationProcessorPackage 128 
 scalar_t__ STATUS_INFO_LENGTH_MISMATCH ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  SystemLogicalProcessorInformationEx ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__*,TYPE_9__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,TYPE_9__*,scalar_t__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__*,int,TYPE_9__*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int,...) ; 

__attribute__((used)) static void FUNC9(void)
{
    SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX *infoex, *infoex2;
    DWORD relationship, len2, len;
    NTSTATUS status;
    BOOL ret;

    if (!&pNtQuerySystemInformationEx)
        return;

    len = 0;
    relationship = RelationProcessorCore;
    status = FUNC7(SystemLogicalProcessorInformationEx, &relationship, sizeof(relationship), NULL, 0, &len);
    FUNC5(status == STATUS_INFO_LENGTH_MISMATCH, "got 0x%08x\n", status);
    FUNC5(len > 0, "got %u\n", len);

    len = 0;
    relationship = RelationAll;
    status = FUNC7(SystemLogicalProcessorInformationEx, &relationship, sizeof(relationship), NULL, 0, &len);
    FUNC5(status == STATUS_INFO_LENGTH_MISMATCH, "got 0x%08x\n", status);
    FUNC5(len > 0, "got %u\n", len);

    len2 = 0;
    ret = FUNC6(RelationAll, NULL, &len2);
    FUNC5(!ret && FUNC0() == ERROR_INSUFFICIENT_BUFFER, "got %d, error %d\n", ret, FUNC0());
    FUNC5(len == len2, "got %u, expected %u\n", len2, len);

    if (len && len == len2) {
        int j, i;

        infoex = FUNC2(FUNC1(), HEAP_ZERO_MEMORY, len);
        infoex2 = FUNC2(FUNC1(), HEAP_ZERO_MEMORY, len);

        status = FUNC7(SystemLogicalProcessorInformationEx, &relationship, sizeof(relationship), infoex, len, &len);
        FUNC5(status == STATUS_SUCCESS, "got 0x%08x\n", status);

        ret = FUNC6(RelationAll, infoex2, &len2);
        FUNC5(ret, "got %d, error %d\n", ret, FUNC0());
        FUNC5(!FUNC4(infoex, infoex2, len), "returned info data mismatch\n");

        for(i = 0; status == STATUS_SUCCESS && i < len; ){
            SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX *ex = (void*)(((char *)infoex) + i);

            FUNC5(ex->Relationship >= RelationProcessorCore && ex->Relationship <= RelationGroup,
                    "Got invalid relationship value: 0x%x\n", ex->Relationship);
            if (!ex->Size)
            {
                FUNC5(0, "got infoex[%u].Size=0\n", i);
                break;
            }

            FUNC8("infoex[%u].Size: %u\n", i, ex->Size);
            switch(ex->Relationship){
            case RelationProcessorCore:
            case RelationProcessorPackage:
                FUNC8("infoex[%u].Relationship: 0x%x (Core == 0x0 or Package == 0x3)\n", i, ex->Relationship);
                FUNC8("infoex[%u].Processor.Flags: 0x%x\n", i, ex->Processor.Flags);
#ifndef __REACTOS__
                FUNC8("infoex[%u].Processor.EfficiencyClass: 0x%x\n", i, ex->Processor.EfficiencyClass);
#endif
                FUNC8("infoex[%u].Processor.GroupCount: 0x%x\n", i, ex->Processor.GroupCount);
                for(j = 0; j < ex->Processor.GroupCount; ++j){
                    FUNC8("infoex[%u].Processor.GroupMask[%u].Mask: 0x%lx\n", i, j, ex->Processor.GroupMask[j].Mask);
                    FUNC8("infoex[%u].Processor.GroupMask[%u].Group: 0x%x\n", i, j, ex->Processor.GroupMask[j].Group);
                }
                break;
            case RelationNumaNode:
                FUNC8("infoex[%u].Relationship: 0x%x (NumaNode)\n", i, ex->Relationship);
                FUNC8("infoex[%u].NumaNode.NodeNumber: 0x%x\n", i, ex->NumaNode.NodeNumber);
                FUNC8("infoex[%u].NumaNode.GroupMask.Mask: 0x%lx\n", i, ex->NumaNode.GroupMask.Mask);
                FUNC8("infoex[%u].NumaNode.GroupMask.Group: 0x%x\n", i, ex->NumaNode.GroupMask.Group);
                break;
            case RelationCache:
                FUNC8("infoex[%u].Relationship: 0x%x (Cache)\n", i, ex->Relationship);
                FUNC8("infoex[%u].Cache.Level: 0x%x\n", i, ex->Cache.Level);
                FUNC8("infoex[%u].Cache.Associativity: 0x%x\n", i, ex->Cache.Associativity);
                FUNC8("infoex[%u].Cache.LineSize: 0x%x\n", i, ex->Cache.LineSize);
                FUNC8("infoex[%u].Cache.CacheSize: 0x%x\n", i, ex->Cache.CacheSize);
                FUNC8("infoex[%u].Cache.Type: 0x%x\n", i, ex->Cache.Type);
                FUNC8("infoex[%u].Cache.GroupMask.Mask: 0x%lx\n", i, ex->Cache.GroupMask.Mask);
                FUNC8("infoex[%u].Cache.GroupMask.Group: 0x%x\n", i, ex->Cache.GroupMask.Group);
                break;
            case RelationGroup:
                FUNC8("infoex[%u].Relationship: 0x%x (Group)\n", i, ex->Relationship);
                FUNC8("infoex[%u].Group.MaximumGroupCount: 0x%x\n", i, ex->Group.MaximumGroupCount);
                FUNC8("infoex[%u].Group.ActiveGroupCount: 0x%x\n", i, ex->Group.ActiveGroupCount);
                for(j = 0; j < ex->Group.ActiveGroupCount; ++j){
                    FUNC8("infoex[%u].Group.GroupInfo[%u].MaximumProcessorCount: 0x%x\n", i, j, ex->Group.GroupInfo[j].MaximumProcessorCount);
                    FUNC8("infoex[%u].Group.GroupInfo[%u].ActiveProcessorCount: 0x%x\n", i, j, ex->Group.GroupInfo[j].ActiveProcessorCount);
                    FUNC8("infoex[%u].Group.GroupInfo[%u].ActiveProcessorMask: 0x%lx\n", i, j, ex->Group.GroupInfo[j].ActiveProcessorMask);
                }
                break;
            default:
                break;
            }

            i += ex->Size;
        }

        FUNC3(FUNC1(), 0, infoex);
        FUNC3(FUNC1(), 0, infoex2);
    }
}