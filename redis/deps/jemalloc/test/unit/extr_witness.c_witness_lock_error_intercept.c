
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int witness_t ;
typedef int witness_list_t ;


 int saw_lock_error ;

__attribute__((used)) static void
witness_lock_error_intercept(const witness_list_t *witnesses,
    const witness_t *witness) {
 saw_lock_error = 1;
}
