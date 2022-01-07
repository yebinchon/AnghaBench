
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;


 int FatalError (char*,int ) ;

__attribute__((used)) static
void OutOfMem(cmsUInt32Number size)
{
    FatalError("Out of memory on allocating %d bytes.", size);
}
