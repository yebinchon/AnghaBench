
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int safe_fclose (int *) ;

__attribute__((used)) static inline void fclosep(FILE **f) {
        safe_fclose(*f);
}
