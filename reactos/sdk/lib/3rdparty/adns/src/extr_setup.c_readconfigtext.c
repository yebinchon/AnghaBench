
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* text; } ;
typedef TYPE_1__ getline_ctx ;
typedef int adns_state ;


 int gl_text ;
 int readconfiggeneric (int ,char const*,int ,TYPE_1__) ;

__attribute__((used)) static void readconfigtext(adns_state ads, const char *text, const char *showname) {
  getline_ctx gl_ctx;

  gl_ctx.text= text;
  readconfiggeneric(ads,showname,gl_text,gl_ctx);
}
