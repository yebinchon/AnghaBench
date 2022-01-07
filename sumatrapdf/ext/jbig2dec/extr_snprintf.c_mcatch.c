
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bail ;
 int siglongjmp (int ,int) ;

__attribute__((used)) static void
mcatch(int a)
{
    siglongjmp(bail, 1);
}
