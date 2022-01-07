
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_CUR ;
 int fseek (int *,int,int ) ;

__attribute__((used)) static void stdio_skip(void *user, int n)
{
   fseek((FILE*) user, n, SEEK_CUR);
}
