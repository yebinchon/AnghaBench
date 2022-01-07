
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ workshop_get_positions (int *,char**,int*,int*,int*,int*,int*,int*,int*,char**) ;

char *
workshop_test_getselectedtext()
{
    char *filename, *selection;
    int curLine, curCol, selStartLine, selStartCol, selEndLine;
    int selEndCol, selLength;

    if (workshop_get_positions(
  ((void*)0), &filename, &curLine, &curCol, &selStartLine,
  &selStartCol, &selEndLine, &selEndCol, &selLength,
  &selection))
 return selection;
    else
 return ((void*)0);
}
