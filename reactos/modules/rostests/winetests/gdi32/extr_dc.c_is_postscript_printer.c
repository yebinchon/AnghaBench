
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tech ;
typedef int HDC ;
typedef int BOOL ;


 scalar_t__ ExtEscape (int ,int ,int ,int *,int,char*) ;
 int FALSE ;
 int GETTECHNOLOGY ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static BOOL is_postscript_printer(HDC hdc)
{
    char tech[256];

    if (ExtEscape(hdc, GETTECHNOLOGY, 0, ((void*)0), sizeof(tech), tech) > 0)
        return strcmp(tech, "PostScript") == 0;

    return FALSE;
}
