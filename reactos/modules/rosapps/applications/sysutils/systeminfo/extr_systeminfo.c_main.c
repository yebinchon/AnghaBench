
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WSADATA ;


 int AllSysInfo () ;
 int LC_ALL ;
 int MAKEWORD (int,int) ;
 int Usage () ;
 int WSAStartup (int ,int *) ;
 int printf (char*,char*) ;
 int setlocale (int ,char*) ;
 int strcmp (char*,char*) ;

int
main(int argc, char *argv[])
{
    WSADATA WsaData;
    int i;

    setlocale(LC_ALL, "");

    WSAStartup(MAKEWORD(2, 2), &WsaData);

    for (i = 1; i < argc; ++i)
    {
        if (!strcmp(argv[i], "/?") || !strcmp(argv[i], "-?"))
        {
            Usage();
            return 0;
        }
        else
        {
            printf("Unsupported argument: %s\n", argv[i]);
            return -1;
        }
    }

    AllSysInfo();

    return 0;
}
