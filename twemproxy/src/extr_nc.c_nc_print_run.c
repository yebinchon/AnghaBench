
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utsname {int machine; int release; int sysname; } ;
struct instance {int pid; } ;


 int NC_VERSION_STRING ;
 int loga (char*,...) ;
 int uname (struct utsname*) ;

__attribute__((used)) static void
nc_print_run(struct instance *nci)
{
    int status;
    struct utsname name;

    status = uname(&name);
    if (status < 0) {
        loga("nutcracker-%s started on pid %d", NC_VERSION_STRING, nci->pid);
    } else {
        loga("nutcracker-%s built for %s %s %s started on pid %d",
             NC_VERSION_STRING, name.sysname, name.release, name.machine,
             nci->pid);
    }

    loga("run, rabbit run / dig that hole, forget the sun / "
         "and when at last the work is done / don't sit down / "
         "it's time to dig another one");
}
