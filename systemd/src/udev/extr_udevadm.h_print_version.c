
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROJECT_VERSION ;
 int STRINGIFY (int ) ;
 int puts (int ) ;

__attribute__((used)) static inline int print_version(void) {

        puts(STRINGIFY(PROJECT_VERSION));
        return 0;
}
