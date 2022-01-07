
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int witness_t ;


 int saw_not_owner_error ;

__attribute__((used)) static void
witness_not_owner_error_intercept(const witness_t *witness) {
 saw_not_owner_error = 1;
}
