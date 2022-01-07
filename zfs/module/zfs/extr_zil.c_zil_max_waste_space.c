
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zilog_t ;
typedef int uint64_t ;


 int zil_max_log_data (int *) ;

__attribute__((used)) static inline uint64_t
zil_max_waste_space(zilog_t *zilog)
{
 return (zil_max_log_data(zilog) / 8);
}
