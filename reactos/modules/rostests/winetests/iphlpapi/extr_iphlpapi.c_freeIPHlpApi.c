
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FreeLibrary (int ) ;
 int hLibrary ;

__attribute__((used)) static void freeIPHlpApi(void)
{
    FreeLibrary(hLibrary);
}
