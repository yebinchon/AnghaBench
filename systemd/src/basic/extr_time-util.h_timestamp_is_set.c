
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usec_t ;


 scalar_t__ USEC_INFINITY ;

__attribute__((used)) static inline bool timestamp_is_set(usec_t timestamp) {
        return timestamp > 0 && timestamp != USEC_INFINITY;
}
