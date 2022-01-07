
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Hashmap ;


 int * TAKE_PTR (int *) ;
 int assert (int **) ;
 int hashmap_move (int *,int *) ;

__attribute__((used)) static int hashmap_complete_move(Hashmap **s, Hashmap **other) {
        assert(s);
        assert(other);

        if (!*other)
                return 0;

        if (*s)
                return hashmap_move(*s, *other);
        else
                *s = TAKE_PTR(*other);

        return 0;
}
