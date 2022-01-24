#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* adns_state ;
typedef  int /*<<< orphan*/  adns_initflags ;
struct TYPE_13__ {scalar_t__ configerrno; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  SECURE_PATH_LEN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cc_entex ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*) ; 
 char* FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

int FUNC12(adns_state *ads_r, adns_initflags flags, FILE *diagfile) {
  adns_state ads;
  const char *res_options, *adns_res_options;
  int r;
#ifdef ADNS_JGAA_WIN32
  #define SECURE_PATH_LEN (MAX_PATH - 64)
  char PathBuf[MAX_PATH];
#endif

  r= FUNC5(&ads, flags, diagfile ? diagfile : stderr);
  if (r) return r;

  res_options= FUNC7(ads,"RES_OPTIONS");
  adns_res_options= FUNC7(ads,"ADNS_RES_OPTIONS");
  FUNC2(ads,"RES_OPTIONS",-1,res_options);
  FUNC2(ads,"ADNS_RES_OPTIONS",-1,adns_res_options);

#ifdef ADNS_JGAA_WIN32
  GetWindowsDirectory(PathBuf, SECURE_PATH_LEN);
  strcat(PathBuf,"\\resolv.conf");
  readconfig(ads,PathBuf,1);
  GetWindowsDirectory(PathBuf, SECURE_PATH_LEN);
  strcat(PathBuf,"\\resolv-adns.conf");
  readconfig(ads,PathBuf,0);
  GetWindowsDirectory(PathBuf, SECURE_PATH_LEN);
  strcat(PathBuf,"\\System32\\Drivers\\etc\\resolv.conf");
  readconfig(ads,PathBuf,1);
  GetWindowsDirectory(PathBuf, SECURE_PATH_LEN);
  strcat(PathBuf,"\\System32\\Drivers\\etc\\resolv-adns.conf");
  readconfig(ads,PathBuf,0);
#else
  FUNC8(ads,"/etc/resolv.conf",1);
  FUNC8(ads,"/etc/resolv-adns.conf",0);
#endif

  FUNC9(ads,"RES_CONF");
  FUNC9(ads,"ADNS_RES_CONF");

  FUNC10(ads,"RES_CONF_TEXT");
  FUNC10(ads,"ADNS_RES_CONF_TEXT");

  FUNC2(ads,"RES_OPTIONS",-1,res_options);
  FUNC2(ads,"ADNS_RES_OPTIONS",-1,adns_res_options);

  FUNC3(ads,"LOCALDOMAIN",-1,FUNC7(ads,"LOCALDOMAIN"));
  FUNC3(ads,"ADNS_LOCALDOMAIN",-1,FUNC7(ads,"ADNS_LOCALDOMAIN"));

  if (ads->configerrno && ads->configerrno != EINVAL) {
    r= ads->configerrno;
    FUNC4(ads);
    return r;
  }

  r= FUNC6(ads);
  if (r) return r;

  FUNC1(ads,0,cc_entex);
  *ads_r= ads;
  return 0;
}