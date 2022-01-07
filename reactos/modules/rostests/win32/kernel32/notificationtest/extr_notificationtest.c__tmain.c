
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;


 int TEXT (char*) ;
 int WatchDirectory (int *) ;
 int _tprintf (int ,int *) ;

int _tmain(int argc, TCHAR *argv[])
{
    if(argc != 2)
    {
        _tprintf(TEXT("Usage: %s <dir>\n"), argv[0]);
        return -1;
    }

    WatchDirectory(argv[1]);

    return 0;
}
