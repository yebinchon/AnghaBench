
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int error_str_; } ;
typedef TYPE_1__ WebPAnimEncoder ;


 int ERROR_STR_MAX_LENGTH ;
 int assert (int ) ;
 scalar_t__ snprintf (int ,int ,char*,char const*,int) ;

__attribute__((used)) static void MarkError2(WebPAnimEncoder* const enc,
                       const char* str, int error_code) {
  if (snprintf(enc->error_str_, ERROR_STR_MAX_LENGTH, "%s: %d.", str,
               error_code) < 0) {
    assert(0);
  }
}
