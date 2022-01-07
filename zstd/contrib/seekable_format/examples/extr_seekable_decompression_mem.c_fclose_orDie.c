
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int exit (int) ;
 int fclose (int *) ;
 int perror (char*) ;

__attribute__((used)) static size_t fclose_orDie(FILE* file)
{
    if (!fclose(file)) return 0;

    perror("fclose");
    exit(6);
}
