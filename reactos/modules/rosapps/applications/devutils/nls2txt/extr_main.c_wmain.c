
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int INT ;


 int BestFit_FromNLS (int *,int *) ;

INT wmain(INT argc, WCHAR* argv[])
{
    if (argc != 3)
        return 1;

    if (!BestFit_FromNLS(argv[1], argv[2]))
        return 1;

    return 0;
}
