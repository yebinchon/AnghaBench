
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int portcmp(const void *key, const void *entry)
{
    const unsigned *port = key;
    const unsigned short *blocked_port = entry;

    return ((int)*port) - ((int)*blocked_port);
}
