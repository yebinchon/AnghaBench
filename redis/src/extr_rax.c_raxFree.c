
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rax ;


 int raxFreeWithCallback (int *,int *) ;

void raxFree(rax *rax) {
    raxFreeWithCallback(rax,((void*)0));
}
