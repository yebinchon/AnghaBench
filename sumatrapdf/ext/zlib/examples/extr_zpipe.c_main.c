
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SET_BINARY_MODE (int ) ;
 int Z_DEFAULT_COMPRESSION ;
 int Z_OK ;
 int def (int ,int ,int ) ;
 int fputs (char*,int ) ;
 int inf (int ,int ) ;
 int stderr ;
 int stdin ;
 int stdout ;
 scalar_t__ strcmp (char*,char*) ;
 int zerr (int) ;

int main(int argc, char **argv)
{
    int ret;


    SET_BINARY_MODE(stdin);
    SET_BINARY_MODE(stdout);


    if (argc == 1) {
        ret = def(stdin, stdout, Z_DEFAULT_COMPRESSION);
        if (ret != Z_OK)
            zerr(ret);
        return ret;
    }


    else if (argc == 2 && strcmp(argv[1], "-d") == 0) {
        ret = inf(stdin, stdout);
        if (ret != Z_OK)
            zerr(ret);
        return ret;
    }


    else {
        fputs("zpipe usage: zpipe [-d] < source > dest\n", stderr);
        return 1;
    }
}
