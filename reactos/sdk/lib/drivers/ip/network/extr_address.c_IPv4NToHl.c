
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;



ULONG IPv4NToHl( ULONG Address ) {
    return
 ((Address & 0xff) << 24) |
 ((Address & 0xff00) << 8) |
 ((Address >> 8) & 0xff00) |
 ((Address >> 24) & 0xff);
}
