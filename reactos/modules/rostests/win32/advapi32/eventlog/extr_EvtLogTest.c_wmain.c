
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int UINT ;


 int TestEventsGeneration () ;
 int TestMyEventProvider () ;
 int _getch () ;
 int wprintf (char*) ;
 int wscanf (char*,int*) ;

int wmain(int argc, WCHAR* argv[])
{
    UINT Choice = 0;

    wprintf(L"\n"
            L"EventLog API interactive tester for ReactOS\n"
            L"===========================================\n"
            L"\n");

ChoiceMenu:
    do
    {
        wprintf(L"What do you want to do:\n"
                L"1) Test events generation.\n"
                L"2) Test customized event provider.\n"
                L"\n"
                L"0) Quit the program.\n"
                L"(Enter the right number, or 0 to quit): ");
        wscanf(L"%lu", &Choice);
        wprintf(L"\n\n");
    } while ((Choice != 0) && (Choice != 1) && (Choice != 2));

    switch (Choice)
    {
        case 0:
            goto Quit;
            break;

        case 1:
            TestEventsGeneration();
            break;

        case 2:
            TestMyEventProvider();
            break;

        default:
            break;
    }
    wprintf(L"\n\n\n\n");
    goto ChoiceMenu;

Quit:
    wprintf(L"Press any key to quit...\n");
    _getch();
    return 0;
}
