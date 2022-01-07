
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Condition ;


 int _CONDITION_TYPE_INVALID ;
 int * condition_free_list_type (int *,int ) ;

__attribute__((used)) static inline Condition* condition_free_list(Condition *first) {
        return condition_free_list_type(first, _CONDITION_TYPE_INVALID);
}
