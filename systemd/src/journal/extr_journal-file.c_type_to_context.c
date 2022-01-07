
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ObjectType ;


 scalar_t__ CONTEXT_HEADER ;
 scalar_t__ MMAP_CACHE_MAX_CONTEXTS ;
 scalar_t__ OBJECT_UNUSED ;
 scalar_t__ _OBJECT_TYPE_MAX ;
 int assert_cc (int) ;

__attribute__((used)) static unsigned type_to_context(ObjectType type) {

        assert_cc(_OBJECT_TYPE_MAX <= MMAP_CACHE_MAX_CONTEXTS);
        assert_cc(CONTEXT_HEADER < MMAP_CACHE_MAX_CONTEXTS);
        return type > OBJECT_UNUSED && type < _OBJECT_TYPE_MAX ? type : 0;
}
