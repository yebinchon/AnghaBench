
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IPropertySetStorage ;


 int testPropsHelper (int **) ;

__attribute__((used)) static void testProps(void)
{
    IPropertySetStorage *propSetStorage = ((void*)0);

    testPropsHelper(&propSetStorage);
    testPropsHelper(((void*)0));
}
