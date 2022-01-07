
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEF_OPT_DIR ;
 int basename (char*) ;
 scalar_t__ strcmp (int ,int ) ;

int
cleanable(char *path)
{
    if (strcmp(basename(path),DEF_OPT_DIR) == 0)
        return 1;
    return 0;
}
