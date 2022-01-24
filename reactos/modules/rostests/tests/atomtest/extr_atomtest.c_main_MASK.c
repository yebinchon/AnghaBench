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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int ULONG ;
typedef  int RTL_ATOM ;
typedef  int /*<<< orphan*/ * PRTL_ATOM_TABLE ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int BUFFER_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int*,int*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

int FUNC8(int argc, char* argv[])
{
   PRTL_ATOM_TABLE AtomTable = NULL;
   RTL_ATOM AtomA = -1, AtomB = -1, AtomC = -1;
   NTSTATUS Status;
   WCHAR Buffer[BUFFER_SIZE];
   ULONG NameLength, Data1, Data2;

   FUNC7("Atom table test app\n\n");

   FUNC7("RtlCreateAtomTable()\n");
   Status = FUNC2(37,
			       &AtomTable);
   FUNC7("  Status 0x%08lx\n", Status);

   if (FUNC0(Status))
     {
	FUNC7("  AtomTable %p\n", AtomTable);

	FUNC7("RtlAddAtomToAtomTable()\n");
	Status = FUNC1(AtomTable,
				       L"TestAtomA",
				       &AtomA);
	FUNC7("  Status 0x%08lx\n", Status);
	if (FUNC0(Status))
	  {
	     FUNC7("  AtomA 0x%x\n", AtomA);
	  }

	FUNC7("RtlAddAtomToAtomTable()\n");
	Status = FUNC1(AtomTable,
				       L"TestAtomB",
				       &AtomB);
	FUNC7("  Status 0x%08lx\n", Status);
	if (FUNC0(Status))
	  {
	     FUNC7("  AtomB 0x%x\n", AtomB);
	  }


	FUNC7("RtlLookupAtomInAtomTable()\n");
	Status = FUNC4(AtomTable,
					  L"TestAtomA",
					  &AtomC);
	FUNC7("  Status 0x%08lx\n", Status);
	if (FUNC0(Status))
	  {
	     FUNC7("  AtomC 0x%x\n", AtomC);
	  }


	FUNC7("RtlPinAtomInAtomTable()\n");
	Status = FUNC5(AtomTable,
				       AtomC);
	FUNC7("  Status 0x%08lx\n", Status);

	FUNC7("RtlPinAtomInAtomTable()\n");
	Status = FUNC5(AtomTable,
				       AtomC);
	FUNC7("  Status 0x%08lx\n", Status);


//	printf("RtlDeleteAtomFromAtomTable()\n");
//	Status = RtlDeleteAtomFromAtomTable(AtomTable,
//					    AtomC);
//	printf("  Status 0x%08lx\n", Status);


//	printf("RtlEmptyAtomTable()\n");
//	Status = RtlEmptyAtomTable(AtomTable,
//				   TRUE);
//	printf("  Status 0x%08lx\n", Status);


//	printf("RtlLookupAtomInAtomTable()\n");
//	Status = RtlLookupAtomInAtomTable(AtomTable,
//					  L"TestAtomA",
//					  &AtomC);
//	printf("  Status 0x%08lx\n", Status);


	FUNC7("RtlQueryAtomInAtomTable()\n");
	NameLength = sizeof(WCHAR) * BUFFER_SIZE;
	Status = FUNC6(AtomTable,
					 AtomC,
					 &Data1,
					 &Data2,
					 Buffer,
					 &NameLength);
	FUNC7("  Status 0x%08lx\n", Status);
	if (FUNC0(Status))
	  {
	     FUNC7("  RefCount %ld\n", Data1);
	     FUNC7("  PinCount %ld\n", Data2);
	     FUNC7("  NameLength %lu\n", NameLength);
	     FUNC7("  AtomName: %S\n", Buffer);
	  }

	FUNC7("RtlDestroyAtomTable()\n");
	FUNC3(AtomTable);


	FUNC7("Atom table test app finished\n");
     }

   return(0);
}