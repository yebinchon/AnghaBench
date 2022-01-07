
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int input_item_t ;


 int * CreateDummyMedia (size_t) ;
 int assert (int *) ;

__attribute__((used)) static void
CreateDummyMediaArray(input_item_t *out[], size_t count)
{
    for (size_t i = 0; i < count; ++i)
    {
        out[i] = CreateDummyMedia(i);
        assert(out[i]);
    }
}
