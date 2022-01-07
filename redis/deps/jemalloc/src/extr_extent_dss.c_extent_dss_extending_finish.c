
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATOMIC_RELAXED ;
 int ATOMIC_RELEASE ;
 int assert (int ) ;
 int atomic_load_b (int *,int ) ;
 int atomic_store_b (int *,int,int ) ;
 int dss_extending ;

__attribute__((used)) static void
extent_dss_extending_finish(void) {
 assert(atomic_load_b(&dss_extending, ATOMIC_RELAXED));

 atomic_store_b(&dss_extending, 0, ATOMIC_RELEASE);
}
