
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_uid; } ;



__attribute__((used)) static bool unsafe_transition(const struct stat *a, const struct stat *b) {




        if (a->st_uid == 0)
                return 0;

        return a->st_uid != b->st_uid;
}
