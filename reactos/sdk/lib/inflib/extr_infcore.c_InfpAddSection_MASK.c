#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG ;
struct TYPE_7__ {TYPE_1__* LastSection; TYPE_1__* FirstSection; scalar_t__ NextSectionId; } ;
struct TYPE_6__ {struct TYPE_6__* Prev; struct TYPE_6__* Next; int /*<<< orphan*/  Name; scalar_t__ Id; } ;
typedef  TYPE_1__* PINFCACHESECTION ;
typedef  TYPE_2__* PINFCACHE ;
typedef  int /*<<< orphan*/ * PCWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INFCACHESECTION ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

PINFCACHESECTION
FUNC6(PINFCACHE Cache,
               PCWSTR Name)
{
  PINFCACHESECTION Section = NULL;
  ULONG Size;

  if (Cache == NULL || Name == NULL)
    {
      FUNC0("Invalid parameter\n");
      return NULL;
    }

  /* Allocate and initialize the new section */
  Size = (ULONG)FUNC1(INFCACHESECTION,
                             Name[FUNC5(Name) + 1]);
  Section = (PINFCACHESECTION)FUNC2(Size);
  if (Section == NULL)
    {
      FUNC0("MALLOC() failed\n");
      return NULL;
    }
  FUNC3 (Section,
              Size);
  Section->Id = ++Cache->NextSectionId;

  /* Copy section name */
  FUNC4(Section->Name, Name);

  /* Append section */
  if (Cache->FirstSection == NULL)
    {
      Cache->FirstSection = Section;
      Cache->LastSection = Section;
    }
  else
    {
      Cache->LastSection->Next = Section;
      Section->Prev = Cache->LastSection;
      Cache->LastSection = Section;
    }

  return Section;
}