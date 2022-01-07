
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alloc_text (int,char*,char*) ;
 int strcat (char*,char*) ;

__attribute__((used)) static void
set_bat_text(int idx, char *batpath, char *name)
{
    strcat(batpath, name);

    alloc_text(idx, "    Create %s", batpath);
}
