
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 scalar_t__ coredump_vacuum (int,int ,int) ;

int main(int argc, char *argv[]) {

        if (coredump_vacuum(-1, (uint64_t) -1, 70 * 1024) < 0)
                return EXIT_FAILURE;

        return EXIT_SUCCESS;
}
