
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char* d_name; } ;


 int streq (char*,char*) ;

__attribute__((used)) static int usbffs_select_ep(const struct dirent *d) {
        return d->d_name[0] != '.' && !streq(d->d_name, "ep0");
}
