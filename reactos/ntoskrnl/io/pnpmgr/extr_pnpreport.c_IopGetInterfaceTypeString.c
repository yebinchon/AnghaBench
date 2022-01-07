
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* PWCHAR ;
typedef int INTERFACE_TYPE ;



 int DPRINT1 (char*,int) ;
PWCHAR
IopGetInterfaceTypeString(INTERFACE_TYPE IfType)
{
    switch (IfType)
    {
       case 141:
         return L"Internal";

       case 140:
         return L"Isa";

       case 142:
         return L"Eisa";

       case 137:
         return L"MicroChannel";

       case 130:
         return L"TurboChannel";

       case 135:
         return L"PCIBus";

       case 129:
         return L"VMEBus";

       case 136:
         return L"NuBus";

       case 134:
         return L"PCMCIABus";

       case 143:
         return L"CBus";

       case 139:
         return L"MPIBus";

       case 138:
         return L"MPSABus";

       case 131:
         return L"ProcessorInternal";

       case 132:
         return L"PNPISABus";

       case 133:
         return L"PNPBus";

       case 128:
         return L"Vmcs";

       default:
         DPRINT1("Invalid bus type: %d\n", IfType);
         return ((void*)0);
    }
}
