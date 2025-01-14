
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int adns_initflags ;


 int SIGPIPE ;
 scalar_t__ SIG_ERR ;
 int SIG_IGN ;
 int adns_if_noautosys ;
 int adns_if_noenv ;
 int adns_if_nosigpipe ;
 int adns_init (scalar_t__*,int,int ) ;
 int adns_init_strcfg (scalar_t__*,int,int ,scalar_t__) ;
 scalar_t__ ads ;
 scalar_t__ config_text ;
 int errno ;
 scalar_t__ fmt_asynch ;
 scalar_t__ fmt_default ;
 scalar_t__ fmt_simple ;
 scalar_t__ ov_asynch ;
 int ov_env ;
 scalar_t__ ov_format ;
 int ov_verbose ;
 scalar_t__ signal (int ,int ) ;
 int stderr ;
 int sysfail (char*,int) ;

void ensure_adns_init(void) {
  adns_initflags initflags;
  int r;

  if (ads) return;





  initflags= adns_if_noautosys|adns_if_nosigpipe|ov_verbose;
  if (!ov_env) initflags |= adns_if_noenv;

  if (config_text) {
    r= adns_init_strcfg(&ads, initflags, stderr, config_text);
  } else {
    r= adns_init(&ads, initflags, 0);
  }
  if (r) sysfail("adns_init",r);

  if (ov_format == fmt_default)
    ov_format= ov_asynch ? fmt_asynch : fmt_simple;
}
