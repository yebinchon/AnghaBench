
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int objset_t ;


 int printf (char*) ;

__attribute__((used)) static void
dump_unknown(objset_t *os, uint64_t object, void *data, size_t size)
{
 (void) printf("\tUNKNOWN OBJECT TYPE\n");
}
