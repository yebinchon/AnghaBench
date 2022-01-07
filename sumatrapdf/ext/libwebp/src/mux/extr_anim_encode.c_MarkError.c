
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int error_str_; } ;
typedef TYPE_1__ WebPAnimEncoder ;


 int ERROR_STR_MAX_LENGTH ;
 int assert (int ) ;
 scalar_t__ snprintf (int ,int ,char*,char const*) ;

__attribute__((used)) static void MarkError(WebPAnimEncoder* const enc, const char* str) {
  if (snprintf(enc->error_str_, ERROR_STR_MAX_LENGTH, "%s.", str) < 0) {
    assert(0);
  }
}
