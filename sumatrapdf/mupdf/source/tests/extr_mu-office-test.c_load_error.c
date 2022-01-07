
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MuOfficeDocErrorType ;


 int assert (int) ;
 int fprintf (int ,char*,int) ;
 int stderr ;

__attribute__((used)) static void
load_error(void *cookie, MuOfficeDocErrorType error)
{
 assert((intptr_t)cookie == 1234);

 fprintf(stderr, "load_error: error=%d\n", error);
}
