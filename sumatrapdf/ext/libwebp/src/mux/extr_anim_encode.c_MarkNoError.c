
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* error_str_; } ;
typedef TYPE_1__ WebPAnimEncoder ;



__attribute__((used)) static void MarkNoError(WebPAnimEncoder* const enc) {
  enc->error_str_[0] = '\0';
}
