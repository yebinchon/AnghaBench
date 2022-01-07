
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct PropertyClosure {int hr; int sectionOffset; int propNum; } ;
typedef int PropertyStorage_impl ;
typedef int BOOL ;


 int PropertyStorage_WritePropertyToStream (int *,int ,int ,void const*,int ) ;
 int PtrToUlong (void const*) ;
 int SUCCEEDED (int ) ;
 int assert (void*) ;

__attribute__((used)) static BOOL PropertyStorage_PropertiesWriter(const void *key, const void *value,
 void *extra, void *closure)
{
    PropertyStorage_impl *This = extra;
    struct PropertyClosure *c = closure;

    assert(key);
    assert(value);
    assert(extra);
    assert(closure);
    c->hr = PropertyStorage_WritePropertyToStream(This, c->propNum++,
                                                  PtrToUlong(key), value, c->sectionOffset);
    return SUCCEEDED(c->hr);
}
