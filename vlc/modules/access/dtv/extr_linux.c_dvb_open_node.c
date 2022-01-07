
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int path ;
struct TYPE_3__ {int dir; int device; } ;
typedef TYPE_1__ dvb_device_t ;


 int O_NONBLOCK ;
 int snprintf (char*,int,char*,char const*,int ) ;
 int strlen (char const*) ;
 int vlc_openat (int ,char*,int) ;

__attribute__((used)) static int dvb_open_node (dvb_device_t *d, const char *type, int flags)
{
    char path[strlen (type) + 4];

    snprintf (path, sizeof (path), "%s%u", type, d->device);
    return vlc_openat (d->dir, path, flags | O_NONBLOCK);
}
