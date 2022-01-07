
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nls_from_txt (char*,char*) ;

int main(int argc, char* argv[])
{
    if (argc != 3)
        return 1;

    if (!nls_from_txt(argv[1], argv[2]))
        return 1;

    return 0;
}
