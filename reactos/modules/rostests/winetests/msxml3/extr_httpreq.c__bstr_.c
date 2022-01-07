
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * BSTR ;


 size_t ARRAY_SIZE (int **) ;
 int * alloc_str_from_narrow (char const*) ;
 int ** alloced_bstrs ;
 size_t alloced_bstrs_count ;
 int assert (int) ;

__attribute__((used)) static BSTR _bstr_(const char *str)
{
    if(!str)
        return ((void*)0);

    assert(alloced_bstrs_count < ARRAY_SIZE(alloced_bstrs));
    alloced_bstrs[alloced_bstrs_count] = alloc_str_from_narrow(str);
    return alloced_bstrs[alloced_bstrs_count++];
}
