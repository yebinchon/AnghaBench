
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ Length; } ;
struct TYPE_13__ {scalar_t__ Length; int Buffer; } ;
struct TYPE_12__ {int nsections; TYPE_1__* sect; scalar_t__ imagebase; } ;
struct TYPE_11__ {int SizeOfRawData; scalar_t__ VirtualAddress; } ;
typedef TYPE_1__ PeSect ;
typedef TYPE_2__ Pe ;
typedef scalar_t__ PCHAR ;
typedef TYPE_3__* PANSI_STRING ;
typedef TYPE_4__ ANSI_STRING ;


 TYPE_3__* ANSI_NAME_STRING (TYPE_1__*) ;
 int DPRINT (char*,char const*,...) ;
 int RtlInitAnsiString (TYPE_4__*,char const*) ;
 int memcmp (int ,char const*,scalar_t__) ;
 TYPE_1__* nil ;

PeSect *pesection(Pe *pe, const char *name)
{
 int i;
 ANSI_STRING WantName;
 RtlInitAnsiString(&WantName, name);
 DPRINT("Searching for section %s\n", name);
 for (i = 0; i < pe->nsections; i++) {
  PANSI_STRING AnsiString = ANSI_NAME_STRING(&pe->sect[i]);
  if (WantName.Length == AnsiString->Length &&
   !memcmp(AnsiString->Buffer, name, WantName.Length)) {
   DPRINT("Found %s (%d) @ %x (%x)\n", name, i,
       ((PCHAR)pe->imagebase)+pe->sect[i].VirtualAddress,
       pe->sect[i].SizeOfRawData);
   return &pe->sect[i];
  }
 }
 DPRINT("%s not found\n", name);
 return nil;
}
