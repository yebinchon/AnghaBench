
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Barrier ;


 int barrier_place (int *) ;
 int barrier_sync (int *) ;

__attribute__((used)) static inline bool barrier_place_and_sync(Barrier *b) {
        (void) barrier_place(b);
        return barrier_sync(b);
}
