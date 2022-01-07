
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ paddr_t ;


 char GetPhysByte (scalar_t__) ;
 scalar_t__ RCV ;
 int chr (char*) ;
 int sync () ;

inline char recv(char *serport) {
    char c;

    while( !chr(serport) ) sync();

    c = GetPhysByte((paddr_t)serport+RCV);
    sync();

    return c;
}
