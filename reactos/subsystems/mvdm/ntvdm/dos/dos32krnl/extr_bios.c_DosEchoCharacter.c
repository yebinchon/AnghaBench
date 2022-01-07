
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int CHAR ;


 int DOS_OUTPUT_HANDLE ;
 int DosPrintCharacter (int ,int) ;

VOID DosEchoCharacter(CHAR Character)
{
    switch (Character)
    {
        case '\0':
        {

            break;
        }

        case '\b':
        {

            DosPrintCharacter(DOS_OUTPUT_HANDLE, '\b');
            DosPrintCharacter(DOS_OUTPUT_HANDLE, ' ');
            DosPrintCharacter(DOS_OUTPUT_HANDLE, '\b');
            break;
        }

        default:
        {




            if (Character < 0x20 && Character != '\r' && Character != '\n')
            {
                DosPrintCharacter(DOS_OUTPUT_HANDLE, '^');
                Character += 'A' - 1;
            }


            DosPrintCharacter(DOS_OUTPUT_HANDLE, Character);
        }
    }
}
