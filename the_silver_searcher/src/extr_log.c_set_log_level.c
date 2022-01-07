
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum log_level { ____Placeholder_log_level } log_level ;


 int log_threshold ;

void set_log_level(enum log_level threshold) {
    log_threshold = threshold;
}
