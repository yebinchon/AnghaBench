
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Buffer ;


 int GetInput (char*,int) ;
 int ProcessCmdLine (char*) ;
 int RegKeyPrint (char) ;
 int default_cmd_line1 ;
 int default_cmd_line2 ;
 int default_cmd_line3 ;
 int default_cmd_line4 ;
 int default_cmd_line5 ;
 int default_cmd_line6 ;
 int default_cmd_line7 ;
 int default_cmd_line8 ;
 int default_cmd_line9 ;
 int dprintf (char*,...) ;
 int show_menu () ;
 int strcpy (char*,int ) ;
 scalar_t__ strstr (char*,char*) ;
 char toupper (char) ;
 int usage (char*) ;

int regdump(int argc, char* argv[])
{
    char Buffer[500];

    if (argc > 1) {

        if (strstr(argv[1], "help")) {
            usage(argv[0]);
        } else if (strstr(argv[1], "HKCR")) {
            RegKeyPrint('1');
        } else if (strstr(argv[1], "HKCU")) {
            RegKeyPrint('2');
        } else if (strstr(argv[1], "HKLM")) {
            RegKeyPrint('3');
        } else if (strstr(argv[1], "HKU")) {
            RegKeyPrint('4');
        } else if (strstr(argv[1], "HKCC")) {
            RegKeyPrint('5');
        } else if (strstr(argv[1], "HKRR")) {
            RegKeyPrint('6');
        } else {
            dprintf("started with argc = %d, argv[1] = %s (unknown?)\n", argc, argv[1]);
        }
        return 0;
    }
    show_menu();
    while (1) {
        GetInput(Buffer, sizeof(Buffer));
        switch (toupper(Buffer[0])) {
        case '0':
            return(0);
        case '1':
            strcpy(Buffer, default_cmd_line1);
            goto doit;
        case '2':
            strcpy(Buffer, default_cmd_line2);
            goto doit;
        case '3':
            strcpy(Buffer, default_cmd_line3);
            goto doit;
        case '4':
            strcpy(Buffer, default_cmd_line4);
            goto doit;
        case '5':
            strcpy(Buffer, default_cmd_line5);
            goto doit;
        case '6':
            strcpy(Buffer, default_cmd_line6);
            goto doit;
        case '7':
            strcpy(Buffer, default_cmd_line7);
            goto doit;
        case '8':
            strcpy(Buffer, default_cmd_line8);
            goto doit;
        case '9':
            strcpy(Buffer, default_cmd_line9);
            goto doit;
        case 'A':
        case 'B':
        case 'C':
        case 'D':
        case 'E':
        case 'F':
            RegKeyPrint(toupper(Buffer[0]) - 'A' + 1);
            break;
        default: doit:
            if (!ProcessCmdLine(Buffer)) {
                dprintf("invalid input.\n");
                show_menu();
            } else {
                dprintf("done.\n");
            }
            break;
        }
    }
    return 0;
}
