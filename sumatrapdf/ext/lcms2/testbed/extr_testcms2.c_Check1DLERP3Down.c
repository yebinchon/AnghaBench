
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsInt32Number ;


 int Check1D (int,int ,int) ;
 int TRUE ;

__attribute__((used)) static
cmsInt32Number Check1DLERP3Down(void)
{
    return Check1D(3, TRUE, 1);
}
