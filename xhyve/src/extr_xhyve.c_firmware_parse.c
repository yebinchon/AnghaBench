
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fbsd_init (char*,char*,char*,int *) ;
 scalar_t__ fbsd_load ;
 int fprintf (int ,char*) ;
 scalar_t__ fw_func ;
 scalar_t__ kexec ;
 int kexec_init (char*,char*,char*) ;
 int stderr ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ strncmp (char*,char*,scalar_t__) ;

__attribute__((used)) static int
firmware_parse(const char *opt) {
 char *fw, *opt1, *opt2, *opt3, *cp;

 fw = strdup(opt);

 if (strncmp(fw, "kexec", strlen("kexec")) == 0) {
  fw_func = kexec;
 } else if (strncmp(fw, "fbsd", strlen("fbsd")) == 0) {
  fw_func = fbsd_load;
 } else {
  goto fail;
 }

  if ((cp = strchr(fw, ',')) != ((void*)0)) {
   *cp = '\0';
   opt1 = cp + 1;
  } else {
   goto fail;
  }

  if ((cp = strchr(opt1, ',')) != ((void*)0)) {
   *cp = '\0';
   opt2 = cp + 1;
  } else {
   goto fail;
  }

  if ((cp = strchr(opt2, ',')) != ((void*)0)) {
   *cp = '\0';
   opt3 = cp + 1;
  } else {
   goto fail;
  }

  opt2 = strlen(opt2) ? opt2 : ((void*)0);
  opt3 = strlen(opt3) ? opt3 : ((void*)0);

 if (fw_func == kexec) {
  kexec_init(opt1, opt2, opt3);
 } else if (fw_func == fbsd_load) {

  fbsd_init(opt1, opt2, opt3, ((void*)0));
 } else {
  goto fail;
 }

 return 0;

fail:
 fprintf(stderr, "Invalid firmware argument\n"
  "    -f kexec,'kernel','initrd','\"cmdline\"'\n"
  "    -f fbsd,'userboot','boot volume','\"kernel env\"'\n");

 return -1;
}
