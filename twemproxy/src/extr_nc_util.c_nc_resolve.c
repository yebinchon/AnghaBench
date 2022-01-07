
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string {char* data; } ;
struct sockinfo {int dummy; } ;


 int nc_resolve_inet (struct string*,int,struct sockinfo*) ;
 int nc_resolve_unix (struct string*,struct sockinfo*) ;

int
nc_resolve(struct string *name, int port, struct sockinfo *si)
{
    if (name != ((void*)0) && name->data[0] == '/') {
        return nc_resolve_unix(name, si);
    }

    return nc_resolve_inet(name, port, si);
}
