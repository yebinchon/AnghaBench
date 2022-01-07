
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int FLAGS_SET (int ,int ) ;
 int all_capabilities () ;

__attribute__((used)) static inline bool cap_test_all(uint64_t caps) {
        return FLAGS_SET(caps, all_capabilities());
}
