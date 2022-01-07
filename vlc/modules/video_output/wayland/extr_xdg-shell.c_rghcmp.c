
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct registry_handler {int iface; } ;


 int strcmp (char const*,int ) ;

__attribute__((used)) static int rghcmp(const void *a, const void *b)
{
    const char *iface = a;
    const struct registry_handler *handler = b;

    return strcmp(iface, handler->iface);
}
