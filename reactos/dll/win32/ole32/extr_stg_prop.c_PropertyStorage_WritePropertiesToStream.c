
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct PropertyClosure {int hr; int * sectionOffset; int propNum; } ;
struct TYPE_3__ {int propid_to_prop; } ;
typedef TYPE_1__ PropertyStorage_impl ;
typedef int HRESULT ;
typedef int DWORD ;


 int PropertyStorage_PropertiesWriter ;
 int S_OK ;
 int assert (int *) ;
 int dictionary_enumerate (int ,int ,struct PropertyClosure*) ;

__attribute__((used)) static HRESULT PropertyStorage_WritePropertiesToStream(
 PropertyStorage_impl *This, DWORD startingPropNum, DWORD *sectionOffset)
{
    struct PropertyClosure closure;

    assert(sectionOffset);
    closure.hr = S_OK;
    closure.propNum = startingPropNum;
    closure.sectionOffset = sectionOffset;
    dictionary_enumerate(This->propid_to_prop, PropertyStorage_PropertiesWriter,
     &closure);
    return closure.hr;
}
