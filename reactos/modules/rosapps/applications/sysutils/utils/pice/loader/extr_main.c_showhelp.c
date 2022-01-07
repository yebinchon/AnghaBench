
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int banner () ;
 int printf (char*) ;

void showhelp(void)
{
    banner();
    printf("LOADER: Syntax:\n");
    printf("LOADER:         loader [switches] [executable/object file path]\n");
    printf("LOADER: Switches:\n");
    printf("LOADER:         -trans      (-t):   translate from exe to sym\n");
    printf("LOADER:         -load       (-l):   load symbols\n");
    printf("LOADER:         -unload     (-u):   unload symbols\n");
    printf("LOADER:         -reload     (-r):   reload some/all symbols\n");
    printf("LOADER:         -verbose    (-v):   be a bit more verbose\n");
    printf("LOADER:         -install    (-i):   install pICE debugger\n");
    printf("LOADER:         -uninstall  (-x):   uninstall pICE debugger\n");
    printf("LOADER:         -break      (-b):   break into debugger\n");
    printf("LOADER:         -serial     (-ser): start serial line terminal\n");
}
