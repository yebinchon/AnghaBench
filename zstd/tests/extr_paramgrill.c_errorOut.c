
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISPLAY (char*,char const*) ;
 int exit (int) ;

__attribute__((used)) static void errorOut(const char* msg)
{
    DISPLAY("%s \n", msg); exit(1);
}
