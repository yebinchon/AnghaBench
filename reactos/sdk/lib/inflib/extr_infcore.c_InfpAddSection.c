
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_7__ {TYPE_1__* LastSection; TYPE_1__* FirstSection; scalar_t__ NextSectionId; } ;
struct TYPE_6__ {struct TYPE_6__* Prev; struct TYPE_6__* Next; int Name; scalar_t__ Id; } ;
typedef TYPE_1__* PINFCACHESECTION ;
typedef TYPE_2__* PINFCACHE ;
typedef int * PCWSTR ;


 int DPRINT (char*) ;
 scalar_t__ FIELD_OFFSET (int ,int ) ;
 int INFCACHESECTION ;
 scalar_t__ MALLOC (scalar_t__) ;
 int ZEROMEMORY (TYPE_1__*,scalar_t__) ;
 int strcpyW (int ,int *) ;
 int strlenW (int *) ;

PINFCACHESECTION
InfpAddSection(PINFCACHE Cache,
               PCWSTR Name)
{
  PINFCACHESECTION Section = ((void*)0);
  ULONG Size;

  if (Cache == ((void*)0) || Name == ((void*)0))
    {
      DPRINT("Invalid parameter\n");
      return ((void*)0);
    }


  Size = (ULONG)FIELD_OFFSET(INFCACHESECTION,
                             Name[strlenW(Name) + 1]);
  Section = (PINFCACHESECTION)MALLOC(Size);
  if (Section == ((void*)0))
    {
      DPRINT("MALLOC() failed\n");
      return ((void*)0);
    }
  ZEROMEMORY (Section,
              Size);
  Section->Id = ++Cache->NextSectionId;


  strcpyW(Section->Name, Name);


  if (Cache->FirstSection == ((void*)0))
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
