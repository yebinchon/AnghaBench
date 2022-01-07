
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* first; struct TYPE_4__* next; scalar_t__ type; scalar_t__ name; } ;
typedef scalar_t__ FD_TYPE ;
typedef TYPE_1__ FDSC ;


 int MSDOS_NAME ;
 TYPE_1__* alloc (int) ;
 int die (char*,char*) ;
 int exit (int) ;
 scalar_t__ fdt_none ;
 scalar_t__ fdt_undelete ;
 int file_cvt (unsigned char*,unsigned char*) ;
 TYPE_1__* fp_root ;
 char* strchr (char*,char) ;
 int strncmp (char*,scalar_t__,int) ;
 int strncpy (scalar_t__,char*,int) ;

void file_add(char *path, FD_TYPE type)
{
    FDSC **current, *walk;
    char name[MSDOS_NAME];
    char *here;

    current = &fp_root;
    if (*path != '/')
 die("%s: Absolute path required.", path);
    path++;
    while (1) {
 if ((here = strchr(path, '/')))
     *here = 0;
 if (!file_cvt((unsigned char *)path, (unsigned char *)name))
     exit(2);
 for (walk = *current; walk; walk = walk->next)
     if (!here && (!strncmp(name, walk->name, MSDOS_NAME) || (type ==
             fdt_undelete
             &&
             !strncmp
             (name + 1,
              walk->name
              + 1,
              MSDOS_NAME
              - 1))))
  die("Ambiguous name: \"%s\"", path);
     else if (here && !strncmp(name, walk->name, MSDOS_NAME))
  break;
 if (!walk) {
     walk = alloc(sizeof(FDSC));
     strncpy(walk->name, name, MSDOS_NAME);
     walk->type = here ? fdt_none : type;
     walk->first = ((void*)0);
     walk->next = *current;
     *current = walk;
 }
 current = &walk->first;
 if (!here)
     break;
 *here = '/';
 path = here + 1;
    }
}
