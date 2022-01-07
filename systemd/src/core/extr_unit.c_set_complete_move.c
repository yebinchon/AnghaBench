
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Set ;


 int * TAKE_PTR (int *) ;
 int assert (int **) ;
 int set_move (int *,int *) ;

__attribute__((used)) static int set_complete_move(Set **s, Set **other) {
        assert(s);
        assert(other);

        if (!other)
                return 0;

        if (*s)
                return set_move(*s, *other);
        else
                *s = TAKE_PTR(*other);

        return 0;
}
