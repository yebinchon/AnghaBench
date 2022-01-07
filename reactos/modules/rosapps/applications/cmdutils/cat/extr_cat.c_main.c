
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buff ;
typedef int FILE ;


 size_t ARRAYSIZE (unsigned char*) ;
 unsigned int EOF ;
 int O_BINARY ;
 int _fileno (int *) ;
 int _setmode (int ,int ) ;
 scalar_t__ _stricmp (char*,char*) ;
 int fclose (int *) ;
 int feof (int *) ;
 unsigned int fgetc (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*) ;
 size_t fread (unsigned char**,int,size_t,int *) ;
 int fwrite (unsigned char**,int,size_t,int *) ;
 int help () ;
 int putchar (unsigned int) ;
 int stderr ;
 int * stdin ;
 int * stdout ;

int main(int argc, char* argv[])
{
    int i;
    FILE* in;
    unsigned char buff[512];
    size_t cnt, readcnt;

    if (argc >= 2)
    {
        if (_stricmp(argv[1], "-h" ) == 0 ||
            _stricmp(argv[1], "--help") == 0 ||
            _stricmp(argv[1], "/?" ) == 0 ||
            _stricmp(argv[1], "/help" ) == 0)
        {
            help();
            return 0;
        }
    }


    _setmode(_fileno(stdout), O_BINARY);


    if (argc <= 1)
    {
        unsigned int ch;


        _setmode(_fileno(stdin), O_BINARY);
        while ((ch = fgetc(stdin)) != EOF)
        {
            putchar(ch);
        }


        return 0;
    }


    for (i = 1; i < argc; i++)
    {

        in = fopen(argv[i], "rb");
        if (in == ((void*)0))
        {
            fprintf(stderr, "Failed to open file '%s'\n", argv[i]);
            return -1;
        }


        cnt = 0; readcnt = 0;
        while (readcnt == cnt)
        {

            cnt = ARRAYSIZE(buff);
            readcnt = fread(&buff, sizeof(buff[0]), cnt, in);
            if (readcnt != cnt)
            {





                if (!feof(in))
                {
                    fprintf(stderr, "Error while reading file '%s'\n", argv[i]);
                    fclose(in);
                    return -1;
                }
            }


            if (readcnt == 0) break;


            fwrite(&buff, sizeof(buff[0]), readcnt, stdout);
        }


        fclose(in);
    }

    return 0;
}
