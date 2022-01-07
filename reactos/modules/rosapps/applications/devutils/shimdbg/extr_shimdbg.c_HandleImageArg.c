
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int APPHELPCACHESERVICECLASS ;


 int CallApphelpWithImage (char*,int,int ,char*) ;
 int xprintf (char*) ;

int HandleImageArg(int argc, char* argv[], int* pn, char MapItChar,
                    APPHELPCACHESERVICECLASS Service, char* ServiceName)
{
    int n = *pn;
    if (n+1 < argc)
    {
        int MapIt = argv[n][1] == MapItChar;
        CallApphelpWithImage(argv[n+1], MapIt, Service, ServiceName);
        (*pn) += 1;
        return 0;
    }
    xprintf("Error: no image name specified\n");
    return 1;
}
