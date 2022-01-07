
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Iterator ;
typedef int FDSet ;


 int ENOENT ;
 int MAKE_SET (int *) ;
 int PTR_TO_FD (void*) ;
 int set_iterate (int ,int *,void**) ;

int fdset_iterate(FDSet *s, Iterator *i) {
        void *p;

        if (!set_iterate(MAKE_SET(s), i, &p))
                return -ENOENT;

        return PTR_TO_FD(p);
}
