
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;


 int DisplayStatus () ;
 int ModifyStatus () ;
 int OptionsAdd ;
 int OptionsRemove ;
 int OptionsSet ;

INT ImageFile_Execute()
{
    if (!OptionsAdd && !OptionsRemove && !OptionsSet)
    {
        DisplayStatus();
    }
    else
    {
        ModifyStatus();
    }

    return 0;
}
