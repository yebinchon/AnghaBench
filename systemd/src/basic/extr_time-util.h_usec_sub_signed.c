
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
typedef scalar_t__ int64_t ;


 int usec_add (int ,int ) ;
 int usec_sub_unsigned (int ,int ) ;

__attribute__((used)) static inline usec_t usec_sub_signed(usec_t timestamp, int64_t delta) {
        if (delta < 0)
                return usec_add(timestamp, (usec_t) (-delta));
        else
                return usec_sub_unsigned(timestamp, (usec_t) delta);
}
