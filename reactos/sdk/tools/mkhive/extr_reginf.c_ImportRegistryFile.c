
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int PWCHAR ;
typedef int PCHAR ;
typedef int HINF ;
typedef int BOOL ;


 scalar_t__ AddReg ;
 int DPRINT1 (char*,...) ;
 scalar_t__ DelReg ;
 int FALSE ;
 int InfHostCloseFile (int ) ;
 scalar_t__ InfHostOpenFile (int *,int ,int ,int *) ;
 int TRUE ;
 int registry_callback (int ,int ,int ) ;

BOOL
ImportRegistryFile(PCHAR FileName)
{
    HINF hInf;
    ULONG ErrorLine;


    if (InfHostOpenFile(&hInf, FileName, 0, &ErrorLine) != 0)
    {
        DPRINT1("InfHostOpenFile(%s) failed\n", FileName);
        return FALSE;
    }

    if (!registry_callback(hInf, (PWCHAR)DelReg, TRUE))
    {
        DPRINT1("registry_callback() for DelReg failed\n");
        InfHostCloseFile(hInf);
        return FALSE;
    }

    if (!registry_callback(hInf, (PWCHAR)AddReg, FALSE))
    {
        DPRINT1("registry_callback() for AddReg failed\n");
        InfHostCloseFile(hInf);
        return FALSE;
    }

    InfHostCloseFile(hInf);
    return TRUE;
}
