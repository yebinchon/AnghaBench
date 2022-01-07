
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rio ;


 int rioFdWrite (int *,int *,int ) ;

__attribute__((used)) static int rioFdFlush(rio *r) {


    return rioFdWrite(r,((void*)0),0);
}
