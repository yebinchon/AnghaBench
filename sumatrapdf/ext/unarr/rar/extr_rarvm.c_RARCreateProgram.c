
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RARProgram ;


 int * calloc (int,int) ;

RARProgram *RARCreateProgram()
{
    return calloc(1, sizeof(RARProgram));
}
