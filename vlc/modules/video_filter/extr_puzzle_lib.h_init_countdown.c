
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 unsigned int __MAX (int,int) ;
 scalar_t__ vlc_mrand48 () ;

__attribute__((used)) static inline int32_t init_countdown(int32_t init_val) {
    return ( ( __MAX( 1, 30000 - init_val)/20 ) / 2 + ((unsigned) vlc_mrand48() ) % ( __MAX( 1, ((30000 - init_val)/20) ) ) ); }
