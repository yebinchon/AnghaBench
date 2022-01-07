
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int ULONG ;
typedef int RTL_ATOM ;
typedef int * PRTL_ATOM_TABLE ;
typedef int NTSTATUS ;


 int BUFFER_SIZE ;
 scalar_t__ NT_SUCCESS (int ) ;
 int RtlAddAtomToAtomTable (int *,char*,int*) ;
 int RtlCreateAtomTable (int,int **) ;
 int RtlDestroyAtomTable (int *) ;
 int RtlLookupAtomInAtomTable (int *,char*,int*) ;
 int RtlPinAtomInAtomTable (int *,int) ;
 int RtlQueryAtomInAtomTable (int *,int,int*,int*,int *,int*) ;
 int printf (char*,...) ;

int main(int argc, char* argv[])
{
   PRTL_ATOM_TABLE AtomTable = ((void*)0);
   RTL_ATOM AtomA = -1, AtomB = -1, AtomC = -1;
   NTSTATUS Status;
   WCHAR Buffer[BUFFER_SIZE];
   ULONG NameLength, Data1, Data2;

   printf("Atom table test app\n\n");

   printf("RtlCreateAtomTable()\n");
   Status = RtlCreateAtomTable(37,
          &AtomTable);
   printf("  Status 0x%08lx\n", Status);

   if (NT_SUCCESS(Status))
     {
 printf("  AtomTable %p\n", AtomTable);

 printf("RtlAddAtomToAtomTable()\n");
 Status = RtlAddAtomToAtomTable(AtomTable,
           L"TestAtomA",
           &AtomA);
 printf("  Status 0x%08lx\n", Status);
 if (NT_SUCCESS(Status))
   {
      printf("  AtomA 0x%x\n", AtomA);
   }

 printf("RtlAddAtomToAtomTable()\n");
 Status = RtlAddAtomToAtomTable(AtomTable,
           L"TestAtomB",
           &AtomB);
 printf("  Status 0x%08lx\n", Status);
 if (NT_SUCCESS(Status))
   {
      printf("  AtomB 0x%x\n", AtomB);
   }


 printf("RtlLookupAtomInAtomTable()\n");
 Status = RtlLookupAtomInAtomTable(AtomTable,
       L"TestAtomA",
       &AtomC);
 printf("  Status 0x%08lx\n", Status);
 if (NT_SUCCESS(Status))
   {
      printf("  AtomC 0x%x\n", AtomC);
   }


 printf("RtlPinAtomInAtomTable()\n");
 Status = RtlPinAtomInAtomTable(AtomTable,
           AtomC);
 printf("  Status 0x%08lx\n", Status);

 printf("RtlPinAtomInAtomTable()\n");
 Status = RtlPinAtomInAtomTable(AtomTable,
           AtomC);
 printf("  Status 0x%08lx\n", Status);
 printf("RtlQueryAtomInAtomTable()\n");
 NameLength = sizeof(WCHAR) * BUFFER_SIZE;
 Status = RtlQueryAtomInAtomTable(AtomTable,
      AtomC,
      &Data1,
      &Data2,
      Buffer,
      &NameLength);
 printf("  Status 0x%08lx\n", Status);
 if (NT_SUCCESS(Status))
   {
      printf("  RefCount %ld\n", Data1);
      printf("  PinCount %ld\n", Data2);
      printf("  NameLength %lu\n", NameLength);
      printf("  AtomName: %S\n", Buffer);
   }

 printf("RtlDestroyAtomTable()\n");
 RtlDestroyAtomTable(AtomTable);


 printf("Atom table test app finished\n");
     }

   return(0);
}
